import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -300,
            left: -200,
            child: Image.asset(
              "assets/images/background-image.png",
              width: size.width * 1.8,
            ),
          ),
          Positioned(
            bottom: -300,
            right: -200,
            child: Image.asset(
              "assets/images/background-image.png",
              width: size.width * 1.8,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
