import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background_login.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/constans.dart';

import 'rounded_input_field.dart';
import 'text_field_container.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _passwordVisible = true;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double _spaceItem = (size.height * 0.05);
    Color _color = kPrimaryLightColor;
    return BackgroundLoginScreen(
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: size.width * 0.9,
          height: size.height * 0.7,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: _color.withOpacity(0.2),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: _spaceItem),
              Text(
                "Login".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: textColorLight,
                ),
              ),
              SizedBox(height: size.height * 0.2),
              const RoundedInputField(
                icon: Icons.person,
                hintText: "Email address",
              ),
              TextFieldContainer(
                child: TextField(
                  obscureText: !_passwordVisible,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    icon: const Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "Password",
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
