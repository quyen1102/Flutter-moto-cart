import 'package:flutter/material.dart';

import 'package:flutter_auth/constans.dart';

class RounedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? pressed;
  final Color? color, textColor;

  const RounedButton({
    Key? key,
    this.text,
    this.pressed,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ElevatedButton(
        onPressed: pressed,
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          primary: color,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        child: Text(text!.toUpperCase()),
      ),
    );
  }
}
