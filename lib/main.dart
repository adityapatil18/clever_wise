import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/screens/getStarted_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStartedScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          // Define text styles for Libre Franklin font
          bodyText1: GoogleFonts.libreFranklin(),
          headline1: GoogleFonts.libreFranklin(),

          // Define text styles for Mulish font
          bodyText2: GoogleFonts.mulish(),
          headline2: GoogleFonts.mulish(),
          // Add more text styles as needed
        ),
      ),
    );
  }
}
