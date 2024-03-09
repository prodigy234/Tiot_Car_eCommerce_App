import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
    );
  }
}
