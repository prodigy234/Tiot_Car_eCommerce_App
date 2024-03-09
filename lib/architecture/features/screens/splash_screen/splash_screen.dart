import 'dart:async';

import 'package:e_commerce_app/architecture/features/screens/introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Introduction_Screen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/car2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 25,
            right: 5,
            left: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'TIOT CAR APP',
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
