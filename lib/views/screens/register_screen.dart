import 'package:clever_wise/constants.dart';
import 'package:clever_wise/views/screens/login_screen.dart';
import 'package:clever_wise/views/screens/otp_screen.dart';
import 'package:clever_wise/views/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_textfiled.dart';

class Register_Screen extends StatelessWidget {
  const Register_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register Account',
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontStyle: GoogleFonts.libreFranklin().fontStyle),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Unlock the full potential of Cleverwise \nby creating your account ',
                    style: TextStyle(
                        color: AppColor.textColor4,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: GoogleFonts.mulish().fontStyle),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    labelText: 'Full Name',
                    hintText: 'Enter your full name',
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    labelText: 'Email Address',
                    hintText: 'example@gmail.com',
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Password'.toUpperCase(),
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
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password',
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
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Confirm Password'.toUpperCase(),
                    style: TextStyle(
                        color: AppColor.textColor2,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontStyle: GoogleFonts.mulish().fontStyle),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 50,
                    child: TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: 'Confirm Your Password',
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
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        side: BorderSide(color: Colors.grey),
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text('I agree to the',
                          style: TextStyle(
                            color: AppColor.textColor3,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontStyle: GoogleFonts.libreFranklin().fontStyle,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontStyle: GoogleFonts.libreFranklin().fontStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlueAppButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Otp_Screen(),
                          ),
                        );
                      },
                      text: 'Register'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 124,
                        child: Divider(
                          endIndent: 20,
                          thickness: 0.2,
                          color: Colors.black,
                        ),
                      ),
                      Text('OR',
                          style: TextStyle(
                            color: AppColor.textColor4,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontStyle: GoogleFonts.libreFranklin().fontStyle,
                          )),
                      SizedBox(
                        width: 124,
                        child: Divider(
                          indent: 20,
                          thickness: 0.2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(149, 42)),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFFEEF4FE))),
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // Ensure the row takes minimum space
                          children: [
                            Image.asset(
                              'Assets/images/google.png',
                              height: 14,
                              width: 14,
                            ), // Replace with Google icon
                            SizedBox(
                                width:
                                    8), // Add some spacing between icon and text
                            Text(
                              'Google',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle:
                                      GoogleFonts.libreFranklin().fontStyle),
                            ), // Replace with your Google text
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(149, 42)),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFFEEF4FE))),
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Ensure the row takes minimum space
                          children: [
                            Image.asset(
                              'Assets/images/facebook.png',
                              height: 14,
                              width: 14,
                            ), // Replace with Google icon
                            SizedBox(
                                width:
                                    8), // Add some spacing between icon and text
                            Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle:
                                      GoogleFonts.libreFranklin().fontStyle),
                            ), // Replace with your Google text
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account?',
                        style: TextStyle(
                            color: AppColor.textColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontStyle: GoogleFonts.libreFranklin().fontStyle),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: GoogleFonts.libreFranklin().fontStyle),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login_Screen(),
                              ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
