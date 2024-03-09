import 'package:e_commerce_app/architecture/features/widgets/container_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'TIOT CAR APP',
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  size: 50,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Your Sign Up Was Successful....",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Thank you for registering on the app. \nYou can start shopping right way....",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const ContainerButtonWidget(
                buttonName: 'Start Shopping Now!!!',
                buttonColor: Colors.black,
                buttonTextColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
