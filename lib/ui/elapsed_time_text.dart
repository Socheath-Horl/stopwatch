import 'package:flutter/material.dart';
import 'package:stopwatch/ui/time_digit.dart';

class ElapsedTimeText extends StatelessWidget {
  const ElapsedTimeText({Key? key, required this.elapsed }): super(key: key);
  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMicroseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;
    final hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    const digitWidth = 12.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeDigit(minutesStr.substring(0, 1), width: digitWidth),
        TimeDigit(minutesStr.substring(1, 2), width: digitWidth),
        const TimeDigit(':', width: 6),
        TimeDigit(secondsStr.substring(0, 1), width: digitWidth),
        TimeDigit(secondsStr.substring(1, 2), width: digitWidth),
        const TimeDigit(':', width: 6),
        TimeDigit(hundredsStr.substring(0, 1), width: digitWidth),
        TimeDigit(hundredsStr.substring(1, 2), width: digitWidth),
      ],
    );
  }
}