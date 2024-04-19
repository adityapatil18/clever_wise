import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;

  const CustomContainer({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Image.asset(
          'Assets/images/bg.png', // Assuming bg.png is in the assets/images folder
          height: 40,
          width: 40,
        ),
      ),
    );
  }
}
