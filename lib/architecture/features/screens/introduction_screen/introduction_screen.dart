import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/1st_intro_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/2nd_intro_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/3rd_intro_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/4th_intro_page.dart';
import 'package:flutter/material.dart';

class Introduction_Screen extends StatelessWidget {
  const Introduction_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  children: const [
                    FirstIntroPage(),
                    SecondIntroPage(),
                    ThirdIntroPage(),
                    FourthIntroPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
