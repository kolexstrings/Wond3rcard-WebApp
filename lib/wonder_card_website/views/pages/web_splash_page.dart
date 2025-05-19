
import 'package:flutter/material.dart';
import 'package:wonder_card_website/wonder_card_website/views/pages/animated_spiral_lines.dart';
import 'package:wonder_card_website/wonder_card_website/views/pages/home_web_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: AnimatedLoadingSpiralLines(
          numberOfLines: 4,
          baseRadius: 10,
          color: Colors.white,
          strokeWidth: 3,
          size: 120,
        ),
      ),
    );
  }
}

