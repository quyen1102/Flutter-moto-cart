import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String? pathImageBGTop, pathImageBGBottom;
  const Background({
    Key? key,
    required this.child,
    required this.pathImageBGTop,
    required this.pathImageBGBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // this is size provide us total height and width of our screens

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              pathImageBGTop!,
              width: size.width * 0.45,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              pathImageBGBottom!,
              width: size.width * 0.5,
            ),
          ),
          child,
          // Positioned(
          //   child: ClipOval(
          //     child: SizedBox.fromSize(
          //       size: const Size.fromRadius(100), // image radius
          //       child: Image.asset(
          //         "assets/images/yamaha.jpg",
          //         width: size.width,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: Image.asset(
          //       "assets/images/home1.jpg",
          //       width: size.width * 0.65,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
