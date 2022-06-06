import 'dart:async';
import 'package:e_futsal/home.dart';
import 'package:e_futsal/login.dart';
import 'package:e_futsal/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenPageState createState() => _splashScreenPageState();
}

class _splashScreenPageState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
            (route) => false)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/football.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
