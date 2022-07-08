import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    Key? key,
    required this.title,
    this.fontSize = 14,
  }) : super(key: key);

  final String title;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff8E2DE2),
            Color(0xff4A00E0),
          ],
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
