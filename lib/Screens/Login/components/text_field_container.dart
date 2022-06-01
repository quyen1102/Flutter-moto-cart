import 'package:flutter/material.dart';
import 'package:flutter_auth/constans.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color _colorShadowTextField = Colors.black38;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      width: size.width * 0.82,
      decoration: BoxDecoration(
          color: textFieldColor.withOpacity(0.74),
          borderRadius: BorderRadius.circular(29),
          boxShadow: [
            BoxShadow(
              color: _colorShadowTextField,
              spreadRadius: 0.5,
              blurRadius: 3,
              offset: const Offset(0, 5),
            )
          ]),
      child: child,
    );
  }
}
