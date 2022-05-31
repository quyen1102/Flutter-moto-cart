import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background_login.dart';
import 'package:flutter_auth/Screens/Register/register_screen.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/components/have_an_account_check.dart';
import 'package:flutter_auth/components/rouned_button.dart';
import 'package:flutter_auth/constans.dart';

import '../../../components/rounded_input_field.dart';
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
    double _fontSizeBottomText = 16;
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
            color: _color.withOpacity(0.3),
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
              SizedBox(height: size.height * 0.12),
              RoundedInputField(
                icon: Icons.person,
                hintText: "Email address",
                onChanged: (value) => {},
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
              SizedBox(height: _spaceItem),
              RounedButton(
                text: "Login",
                pressed: () {},
                color: kPrimaryColor,
                textColor: textColorLight,
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccount(
                haveAnAccount: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
