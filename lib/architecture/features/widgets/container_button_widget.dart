import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerButtonWidget extends StatelessWidget {
  const ContainerButtonWidget(
      {required this.buttonName,
      this.buttonColor,
      this.buttonBorder,
      super.key,
      this.buttonTextColor});

  final String buttonName;
  final Color? buttonColor;
  final Border? buttonBorder;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: buttonBorder,
          borderRadius: BorderRadius.circular(20),
          color: buttonColor),
      child: Text(
        buttonName,
        style: GoogleFonts.poppins(
            fontSize: 14, color: buttonTextColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
