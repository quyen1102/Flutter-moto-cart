import 'package:flutter/material.dart';
import 'package:flutter_auth/constans.dart';

import '../Screens/Register/register_screen.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool? haveAnAccount;
  final VoidCallback? press;
  double _fontSizeBottomText = 16;
  AlreadyHaveAnAccount({
    Key? key,
    this.haveAnAccount,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          haveAnAccount!
              ? "Already have an Account!"
              : "Don't have an Account?",
          style: TextStyle(
            color: textColor,
            fontSize: _fontSizeBottomText,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            haveAnAccount! ? "Login" : "SignUp",
            style: TextStyle(
              color: textColor,
              fontSize: _fontSizeBottomText,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
