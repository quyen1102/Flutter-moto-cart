import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Wellcome/wellcome_screen.dart';
import 'package:flutter_auth/constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WellcomeScreen(),
    );
  }
}
