import 'package:clever_wise/views/screens/otp_screen.dart';
import 'package:clever_wise/views/screens/register_screen.dart';
import 'package:clever_wise/views/widgets/app_buttons.dart';
import 'package:clever_wise/views/widgets/custom_textfiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  top: 40,
                  bottom: 0,
                ),
                child: Container(
                  height: 44,
                  width: 220,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(
                            "Assets/images/logo.png",
                          ),
                          fit: BoxFit.contain)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  // top: 20,
                ),
                child: Text(
                  'Simplify your Cleverwise access with our effortless sign-in process',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontStyle: GoogleFonts.libreFranklin().fontStyle),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.only(left: 40, right: 40, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontStyle: GoogleFonts.libreFranklin().fontStyle),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      labelText: 'EMAIL',
                      hintText: 'example@email.com',
                      controller: TextEditingController(),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      labelText: 'PASSWORD',
                      hintText: 'Enter Your Password',
                      controller: TextEditingController(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          side: BorderSide(color: Colors.grey),
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(
                              color: AppColor.textColor4,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: GoogleFonts.libreFranklin().fontStyle),
                        ),
                        Spacer(),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: GoogleFonts.libreFranklin().fontStyle),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    BlueAppButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Otp_Screen()));
                        },
                        text: "Sign In"),
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
                                fontStyle:
                                    GoogleFonts.libreFranklin().fontStyle)),
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
                              fixedSize:
                                  MaterialStatePropertyAll(Size(149, 42)),
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
                              fixedSize:
                                  MaterialStatePropertyAll(Size(149, 42)),
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
                    // Spacer(),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an ccount?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: GoogleFonts.mulish().fontStyle),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontStyle:
                                    GoogleFonts.libreFranklin().fontStyle),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register_Screen(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: SingleChildScrollView(
      //   child:
      // ),
    );
  }
}
