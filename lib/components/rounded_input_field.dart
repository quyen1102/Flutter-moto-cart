import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/text_field_container.dart';
import 'package:flutter_auth/constans.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>?
      onChanged; // fucntion string get data when data modify
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}