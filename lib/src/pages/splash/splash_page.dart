import 'package:flutter/material.dart';

class SplashCreen extends StatelessWidget {
  const SplashCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9F150D),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Logo.png"),
            fit: BoxFit.none,
          )
        ),
      ),
    );
  }
}
