import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdIntroPage extends StatelessWidget {
  const ThirdIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            'assets/images/car3.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Are You Considering Your Budget?',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Don't worry yourself... /nWe sufficiently have the best customer-centric packages just for you....",
          style: GoogleFonts.poppins(),
        ),
      ],
    );
  }
}
