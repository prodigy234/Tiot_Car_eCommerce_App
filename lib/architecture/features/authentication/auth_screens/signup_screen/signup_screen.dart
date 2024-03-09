import 'package:e_commerce_app/architecture/features/authentication/auth_screens/success_screen.dart/success_screen.dart';
import 'package:e_commerce_app/architecture/features/widgets/auth_input_text_field_widget.dart';
import 'package:e_commerce_app/architecture/features/widgets/container_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void dispose() {
    super.dispose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TIOT CAR APP',
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Signup",
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create a new account",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AuthInputTextField(
                  labelText: 'User Name',
                  controller: userNameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                AuthInputTextField(
                  labelText: 'Email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
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
                  height: 10,
                ),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: const OutlineInputBorder(),
                    label: const Text('Confirm Password'),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessScreen(),
                      ),
                    );
                  },
                  child: const ContainerButtonWidget(
                    buttonName: 'Sign up',
                    buttonColor: Colors.black,
                    buttonTextColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
