import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background_login.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/constans.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double _spaceItem = (size.height * 0.05);
    Color _color = kPrimaryLightColor;
    return BackgroundLoginScreen(
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: size.width * 0.8,
          height: size.height * 0.7,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: _color.withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                color: _color.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.03),
              Text(
                "Login".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: textColorLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
