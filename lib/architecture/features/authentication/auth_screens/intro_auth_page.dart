import 'package:e_commerce_app/architecture/features/authentication/auth_screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/architecture/features/authentication/auth_screens/signup_screen/signup_screen.dart';
import 'package:e_commerce_app/architecture/features/authentication/auth_screens/view_gallery/view_gallery.dart';
import 'package:e_commerce_app/architecture/features/widgets/container_button_widget.dart';
import 'package:flutter/material.dart';

class IntroAuthPage extends StatelessWidget {
  const IntroAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/car4.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 25,
            right: 5,
            left: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const ContainerButtonWidget(
                      buttonName: 'Login',
                      buttonColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: ContainerButtonWidget(
                      buttonName: 'Signup',
                      buttonTextColor: Colors.white,
                      buttonBorder: (Border.all(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewGalleryScreen()));
                    },
                    child: ContainerButtonWidget(
                      buttonName: 'View Car Gallery',
                      buttonTextColor: Colors.white,
                      buttonColor: Colors.amber,
                      buttonBorder: (Border.all(color: Colors.white)),
                    ),
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
