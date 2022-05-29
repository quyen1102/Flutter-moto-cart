import 'package:flutter/material.dart';

class BackgroundLoginScreen extends StatelessWidget {
  final Widget? child;
  const BackgroundLoginScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/home1.jpg"), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
