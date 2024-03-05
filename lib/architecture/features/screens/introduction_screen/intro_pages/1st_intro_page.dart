import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstIntroPage extends StatelessWidget {
  const FirstIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            'assets/images/car1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Best E-commerce App \nWith World Class Delivery',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'We offer the best products at a very affordable price',
          style: GoogleFonts.poppins(),
        ),
      ],
    );
  }
}
