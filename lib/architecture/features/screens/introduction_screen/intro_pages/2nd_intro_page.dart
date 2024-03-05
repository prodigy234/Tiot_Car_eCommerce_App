import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondIntroPage extends StatelessWidget {
  const SecondIntroPage({super.key});

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
            'assets/images/car2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Best And Highly Durable Cars \n With A Luxurious Blend Of Elegance',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Make your orders now!!!',
          style: GoogleFonts.poppins(),
        ),
      ],
    );
  }
}
