import 'package:flutter/material.dart';

class TimeDigit extends StatelessWidget {
  const TimeDigit(this.text, { Key? key, required this.width }): super(key: key);
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}