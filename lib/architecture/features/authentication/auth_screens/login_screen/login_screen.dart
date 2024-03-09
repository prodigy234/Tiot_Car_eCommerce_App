import 'package:e_commerce_app/architecture/features/widgets/auth_input_text_field_widget.dart';
import 'package:e_commerce_app/architecture/features/widgets/container_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  onTap: () {},
                  child: const ContainerButtonWidget(
                    buttonName: 'Login',
                    buttonColor: Colors.black,
                    buttonTextColor: Colors.white,
                  ),
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
      ),
    );
  }
}
