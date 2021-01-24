import 'package:flutter/material.dart';
import 'package:flutter_application/screens/welcome/components/background.dart';
import 'package:flutter_application/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(
            bottom: 1000,
            right: 100,
            child: Image.asset(
              "assets/images/MeO2.png",
              width: size.width,
            ),
          ),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 39),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              onPressed: () {},
              color: darkgreenaccents,
              splashColor: lightblueaccent,
              minWidth: 200,
              child: Text("About", style: TextStyle(color: lightblueaccent))),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              color: darkgreenaccents,
              minWidth: 200,
              splashColor: lightblueaccent,
              onPressed: () {},
              child: Text("Login", style: TextStyle(color: lightblueaccent))),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              color: darkgreenaccents,
              minWidth: 200,
              splashColor:
                  lightblueaccent, // to have a splash effect when button is clicked, uncomment if needed

              onPressed: () {},
              child: Text("Signup", style: TextStyle(color: lightblueaccent))),
        ],
      ),
    );
  }
}
