import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/text_field_container.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Register/components/background_signup.dart';
import 'package:flutter_auth/components/have_an_account_check.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rouned_button.dart';
import 'package:flutter_auth/constans.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;
  @override
  void initState() {
    _passwordVisible = false;
    _confirmPasswordVisible = false;
    super.initState();
  }

  @override
  void dispose() {
    _passwordVisible = false;
    _confirmPasswordVisible = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _spaceItem = size.height * 0.02;
    return BackgroundRegister(
        child: Center(
      child: Container(
        //size
        alignment: Alignment.center,
        width: size.width * 0.9,
        height: size.height * 0.7,
        decoration: BoxDecoration(
          color: kPrimaryLightColor.withOpacity(0.3),
        ),
        // foregroundDecoration:  child color

        child: Column(
          children: [
            SizedBox(height: _spaceItem),
            Text(
              "Sign Up".toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: textColorLight,
              ),
            ),
            SizedBox(height: size.height * 0.12),
            //email
            RoundedInputField(
              icon: Icons.person,
              hintText: "Email address",
              onChanged: (value) => {},
            ),
            //password
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

            //confirm password
            TextFieldContainer(
              child: TextField(
                obscureText: !_confirmPasswordVisible,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  hintText: "Confirm Password",
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
                        _confirmPasswordVisible = !_confirmPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RounedButton(
              text: "Sign Up",
              color: kPrimaryColor,
              pressed: () {},
              textColor: textColor,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccount(
              haveAnAccount: true,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            )
            // Container(
            //   child: Row(children: []),
            // )
          ],
        ),
      ),
    ));
  }
}
