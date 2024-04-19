import 'package:clever_wise/constants.dart';
import 'package:clever_wise/views/screens/home_screen.dart';
import 'package:clever_wise/views/screens/subscription_screen.dart';
import 'package:clever_wise/views/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp_Screen extends StatelessWidget {
  const Otp_Screen({super.key});

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
              padding: const EdgeInsets.only(top: 105, left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify your email address',
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please confirm your email by entering the \n4-digit verification code sent to your inbox',
                    style: TextStyle(
                        color: AppColor.textColor4,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.mulish().fontFamily),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  BlueAppButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubScription_Screen()));
                      },
                      text: 'Verify'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send code again',
                        style: TextStyle(
                            color: AppColor.textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: GoogleFonts.libreFranklin().fontFamily),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '00:59',
                        style: TextStyle(
                            color: AppColor.textColor4,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: GoogleFonts.libreFranklin().fontFamily),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
