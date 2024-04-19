import 'package:clever_wise/views/widgets/app_buttons.dart';
import 'package:clever_wise/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class SubScription_Screen extends StatelessWidget {
  const SubScription_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
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
              padding: const EdgeInsets.only(
                top: 40,
                left: 40,
                right: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    "Maximize the benefits of \nusing Cleverwise with our \nPremium Subscription",
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Experience the pinnacle of productivity \nwith the Cleverwise Premium Subscription',
                    style: TextStyle(
                        color: AppColor.textColor4,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.mulish().fontFamily),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomContainer(
                        color: Color(0xFFFEF0DB),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unlimited Access',
                            style: TextStyle(
                              color: AppColor.textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily:
                                  GoogleFonts.libreFranklin().fontFamily,
                            ),
                          ),
                          Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'From advanced task tracking to \ncomplete project management tools',
                            style: TextStyle(
                              color: AppColor.textColor3,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.mulish().fontFamily,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomContainer(
                        color: Color(0xFFDDFCE0),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exclusive Updates',
                            style: TextStyle(
                              color: AppColor.textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily:
                                  GoogleFonts.libreFranklin().fontFamily,
                            ),
                          ),
                          Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Exclusive analytics for smart decisions, \nstaying ahead in your workflow',
                            style: TextStyle(
                              color: AppColor.textColor3,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoogleFonts.mulish().fontFamily,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomContainer(
                        color: Color(0xFFEEF4FE),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Limitless Applicant Responses',
                            style: TextStyle(
                              color: AppColor.textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily:
                                  GoogleFonts.libreFranklin().fontFamily,
                            ),
                          ),
                          Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Effortlessly handle numerous \ncandidate interactions in our database',
                            style: TextStyle(
                              color: AppColor.textColor3,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.mulish().fontFamily,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Pick a Subscription'.toUpperCase(),
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.mulish().fontFamily),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isChecked ? AppColor.primaryColor : Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      title: Text(
                        'Annual',
                        style: TextStyle(
                            color: AppColor.textColor2,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.libreFranklin().fontFamily),
                      ),
                      subtitle: Text(
                          "\$19.99 / Month, billed yearly at \$239.88 ",
                          style: TextStyle(
                              color: AppColor.textColor3,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.mulish().fontFamily)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isChecked ? AppColor.primaryColor : Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      title: Text(
                        'Monthly',
                        style: TextStyle(
                            color: AppColor.textColor2,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.libreFranklin().fontFamily),
                      ),
                      subtitle: Text("\$24.99 / Month",
                          style: TextStyle(
                              color: AppColor.textColor3,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.mulish().fontFamily)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppButton2(
                    onPressed: () {},
                    text: 'Subscribe to Cleverwise Premium',
                    backgroundColor: Color(0xFFF2B966),
                    textColor: AppColor.textColor,
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
