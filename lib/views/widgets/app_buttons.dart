import 'package:clever_wise/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.backgroundColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 50,
        width:
            MediaQuery.of(context).size.width, // Set width to the screen width
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColor.baseColor),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: GoogleFonts.libreFranklin()
                    .fontStyle // Use the variable here
                ),
          ),
        ),
      ),
    );
  }
}

class BlueAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  // static const String _libreFranklinFont =
  //     'LibreFranklin'; // Assign font family to a variable

  const BlueAppButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColor.primaryColor),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontStyle:
                  GoogleFonts.libreFranklin().fontStyle // Use the variable here
              ),
        ),
      ),
    );
  }
}

class AppButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const AppButton2(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.backgroundColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width, // Set width to the screen width
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColor.baseColor),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontStyle:
                  GoogleFonts.libreFranklin().fontStyle // Use the variable here
              ),
        ),
      ),
    );
  }
}
