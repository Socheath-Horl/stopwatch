import 'dart:math';

import 'package:flutter/material.dart';

class ClockTextMarker extends StatelessWidget {
  const ClockTextMarker({
    Key? key,
    required this.value,
    required this.maxValue,
    required this.radius,
  });
  final int value;
  final int maxValue;
  final double radius;

  @override
  Widget build(BuildContext context) {
    const width = 40.0;
    const height = 30.0;
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0.0)
        ..rotateZ(pi + 2 * pi * (value / maxValue))
        ..translate(0.0, radius - 35, 0.0)
        ..rotateZ(pi - 2 * pi * (value / maxValue)),
      child: SizedBox(
        child: Text(
          value.toString(),
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}