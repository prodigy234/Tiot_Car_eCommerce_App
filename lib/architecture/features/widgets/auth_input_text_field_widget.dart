import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthInputTextField extends StatelessWidget {
  const AuthInputTextField({
    super.key,
    required this.labelText,
    this.visibleIcon,
    required this.controller,
  });
  final String labelText;
  final IconData? visibleIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(labelText),
        labelStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
