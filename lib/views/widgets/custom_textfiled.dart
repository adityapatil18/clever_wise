import 'package:clever_wise/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 13),
            Text(
              labelText.toUpperCase(),
              style: TextStyle(
                  color: AppColor.textColor2,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontStyle: GoogleFonts.mulish().fontStyle),
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 50,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: AppColor.textColor3,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: GoogleFonts.mulish().fontStyle),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
