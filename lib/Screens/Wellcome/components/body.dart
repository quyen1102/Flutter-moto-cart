import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/constans.dart';
import '../../../components/background.dart';
import '../../Register/register_screen.dart';
import 'rouned_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double _spaceItem = (size.height * 0.05);
    return Background(
      pathImageBGTop: "assets/images/main_top.png",
      pathImageBGBottom: "assets/images/login_bottom.png",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Wellcom to my app".toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(height: _spaceItem),
          Image.asset(
            "assets/images/hat_biker1.jpg",
            width: size.width * 0.5,
          ),
          SizedBox(height: _spaceItem),
          RounedButton(
            text: "Login",
            pressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            color: kPrimaryColor,
          ),
          SizedBox(height: size.height * 0.02),
          RounedButton(
            text: "Sign up",
            pressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              );
            },
            color: kPrimaryLightColor,
          ),
        ],
      ),
    );
  }
}
