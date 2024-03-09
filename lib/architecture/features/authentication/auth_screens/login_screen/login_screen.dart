import 'package:e_commerce_app/architecture/features/widgets/container_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Text(
                      'TIOT CAR APP',
                      style: GoogleFonts.poppins(
                          fontSize: 40,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "You Are Welcome",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "You can login or signup for a much better user experience on the app",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text('Email'),
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off),
                  border: const OutlineInputBorder(),
                  label: const Text('Password'),
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ContainerButtonWidget(
                buttonName: 'Login',
                buttonColor: Colors.black,
                buttonTextColor: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 3,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  const Text('Or'),
                  Container(
                    height: 1,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ContainerButtonWidget(
                icon: Icons.facebook,
                buttonName: 'Continue with facebook',
                buttonColor: Colors.blue,
                buttonTextColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
