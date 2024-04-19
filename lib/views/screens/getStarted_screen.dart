import 'package:clever_wise/constants.dart';
import 'package:clever_wise/views/screens/login_screen.dart';
import 'package:clever_wise/views/widgets/app_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "Assets/images/logo.png",
                        ),
                        fit: BoxFit.contain)),
              ),
              Text(
                'Streamline your personnel processes for better efficiency and convenience today!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('Assets/images/bg.png')),
        ),
        AppButton(
            textColor: Colors.white,
            backgroundColor: AppColor.baseColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login_Screen(),
                  ));
            },
            text: 'Get Started')
      ]),
    );
  }
}
