import 'package:flutter/material.dart';
import 'package:flutter_application/screens/login/components/background.dart';
import 'package:flutter_application/constants.dart';
import 'package:flutter_application/components/roundish_button.dart';
import 'package:flutter_application/screens/login/login_screen.dart';
import 'package:flutter_application/components/check_account_field.dart';
import 'package:flutter_application/components/roundish_passfield.dart';
import 'package:flutter_application/components/roundish_input.dart';

import 'package:flutter_application/components/text_field_container.dart';

import 'package:flutter_application/screens/signup/signup_screen.dart';
// import 'package:flutter_application/screens/welcome/welcome.dart';

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
            SizedBox(
              height: size.height * 0.13,
              width: size.width,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
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
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
