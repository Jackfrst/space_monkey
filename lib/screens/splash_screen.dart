import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_monkey/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      _initScreen();
    });
  }

  Future<void> _initScreen() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const LandingScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/gif/welcome.gif"),
    );
  }
}
