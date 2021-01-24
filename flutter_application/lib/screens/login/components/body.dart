import 'package:flutter/material.dart';
import 'package:flutter_application/screens/welcome/components/background.dart';
import 'package:flutter_application/constants.dart';
import 'package:flutter_application/components/roundish_button.dart';
import 'package:flutter_application/screens/login/login_screen.dart';
import 'package:flutter_application/screens/signup/signup_screen.dart';
import 'package:flutter_application/screens/welcome/welcome.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                "assets/images/MeO2.png",
                height: size.height * 0.2,
                width: size.width,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            RoundedButton(
              // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 39),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(7)),
              // onPressed: () {},
              // color: darkgreenaccents,
              // splashColor: lightblueaccent,
              // minWidth: 200,
              // child: Text("About", style: TextStyle(color: lightblueaccent))),
              text: "About",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WelcomeScreen(); // go to about section
                }));
              },
            ),
            RoundedButton(
              // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(7)),
              // color: darkgreenaccents,
              // minWidth: 200,
              // splashColor: lightblueaccent,
              // onPressed: () {},
              // child: Text("Login", style: TextStyle(color: lightblueaccent))),
              text: "Login",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen(); // go to about section
                }));
              },
            ),
            RoundedButton(
              // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(7)),
              // color: darkgreenaccents,
              // minWidth: 200,
              // splashColor:
              //     lightblueaccent, // to have a splash effect when button is clicked, uncomment if needed

              // onPressed: () {},
              // child:
              //     Text("Signup", style: TextStyle(color: lightblueaccent))),
              text: "Signup",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WelcomeScreen(); // go to about section
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
