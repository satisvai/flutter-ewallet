import 'dart:async';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        "/onboarding",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Image.asset(
              "assets/img_logo_dark.png",
              width: 150.0,
              height: 50.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
