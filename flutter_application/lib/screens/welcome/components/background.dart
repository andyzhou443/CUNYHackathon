import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 140,
            right: 0,
            child: Image.asset(
              "assets/art/1.png",
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 110,
            right: 0,
            child: Image.asset(
              "assets/art/2.png",
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            child: Image.asset(
              "assets/art/3.png",
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Image.asset(
              "assets/art/4.png",
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/art/5.png",
              width: size.width,
            ),
          ),
          Positioned(
            bottom: -130,
            right: 0,
            child: Image.asset(
              "assets/art/treeshack_seedling.png",
              width: size.width,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
