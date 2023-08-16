import 'package:flutter/material.dart';

class LoadingPainter extends CustomPainter {
  final double start;
  static const numOfDots = 8;
  static const minAddition = 12;
  static const maxAddition = 27;
  static const xOffsetStart = -36.0;
  static const yOffsetStart = -12.0;

  LoadingPainter({required this.start}) : assert(start < numOfDots);

  @override
  void paint(Canvas canvas, Size size) {
    double xOffset = xOffsetStart;
    double yOffset = yOffsetStart;
    for (int i = 0; i < numOfDots; i++) {
      if (i == 1 || i == 2) {
        xOffset += maxAddition;
      } else if (i == 0 || i == 3) {
        xOffset += minAddition;
      } else if (i == 5 || i == 6) {
        xOffset -= maxAddition;
      } else {
        xOffset -= minAddition;
      }
      if (i == 0 || i == 7) {
        yOffset += maxAddition;
      } else if (i == 3 || i == 4) {
        yOffset -= maxAddition;
      } else if (i == 1 || i == 6) {
        yOffset += minAddition;
      } else {
        yOffset -= minAddition;
      }
      final currentIndex = i > start ? i - start : numOfDots - start + i;
      canvas.drawCircle(
        Offset(xOffset, yOffset),
        currentIndex + 2,
        Paint()
          ..color = Colors.white.withOpacity(
            currentIndex * 0.1 + 0.45 > 1 ? 1 : currentIndex * 0.1 + 0.45,
          ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
