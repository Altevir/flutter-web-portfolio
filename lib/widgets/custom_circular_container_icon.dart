import 'package:flutter/material.dart';

class CustomCircularContainerIcon extends StatelessWidget {
  const CustomCircularContainerIcon({
    Key? key,
    required this.pathIcon,
    required this.title,
  }) : super(key: key);

  final String pathIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 92,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(46),
        ),
        color: Color(0xff202040),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            pathIcon,
            height: 32,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 8),
          )
        ],
      ),
    );
  }
}
