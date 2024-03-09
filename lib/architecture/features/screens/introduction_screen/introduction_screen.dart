import 'package:e_commerce_app/architecture/features/authentication/auth_screens/intro_auth_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/first_intro_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/second_intro_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/third_intro_page.dart';
import 'package:e_commerce_app/architecture/features/screens/introduction_screen/intro_pages/fourth_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction_Screen extends StatefulWidget {
  const Introduction_Screen({super.key});

  @override
  State<Introduction_Screen> createState() => _Introduction_ScreenState();
}

class _Introduction_ScreenState extends State<Introduction_Screen> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (currentPage < 4 && currentPage == 0) {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IntroAuthPage(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
