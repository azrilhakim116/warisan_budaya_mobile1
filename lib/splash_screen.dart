import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/dashboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Warisan',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
            text: 'Budaya',
            style: GoogleFonts.poppins(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )
        ])),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/logo_barong.png',
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
