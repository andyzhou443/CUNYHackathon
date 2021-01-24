import 'package:flutter/material.dart';
import 'package:flutter_application/constants.dart';
import 'package:flutter_application/screens/about/components/background.dart';

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
              height: size.height * 0.12,
              width: size.width,
            ),
            Text(
              "Your great grandparents left you a nice piece of land for you to escape to nature. On this acre is a sapling that has miracuslously started to grow after the toxic fumes polluted the city after your great grandparents passed.",
              style: TextStyle(fontSize: 20, color: darkgreenaccents),
            ),
            SizedBox(
              height: size.height * 0.01,
              width: size.width,
            ),
            Text(
              "This area has since been cleaned up after strict environmental regulations, but it is now your duty to make sure you keep toxic emissions out of your forest as much as possible. We will measure this by the amount of waste you produce and types of meat you eat. Depending on the calculated carbon emissions, your sapling can florish into a forest, or wither and die.",
              style: TextStyle(fontSize: 20, color: darkgreenaccents),
            ),
            SizedBox(
              height: size.height * 0.13,
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
