import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewGalleryScreen extends StatefulWidget {
  const ViewGalleryScreen({super.key});

  @override
  State<ViewGalleryScreen> createState() => _ViewGalleryScreenState();
}

class _ViewGalleryScreenState extends State<ViewGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
          ],
        ),
      ),
    );
  }
}
