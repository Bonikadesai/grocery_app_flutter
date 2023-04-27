import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('second_page');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 75,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              "assets/images/app_logo.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
