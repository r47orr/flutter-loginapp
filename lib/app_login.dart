// import 'package:applogin/pages/home_page.dart';
import 'package:applogin/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppLogin extends StatelessWidget {
  const AppLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          textTheme: GoogleFonts.quicksandTextTheme()),
      home: const LoginPage(),
    );
  }
}
