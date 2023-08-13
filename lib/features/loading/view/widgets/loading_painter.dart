import 'package:flutter/material.dart';

class LoadingPainter extends CustomPainter {
  final double start;
  static const numOfDots = 8;

  LoadingPainter({required this.start}) : assert(start < numOfDots);

  @override
  void paint(Canvas canvas, Size size) {
    double xOffset = -36;
    double yOffset = -12;
    for (int i = 0; i < numOfDots; i++) {
      if (i == 1 || i == 2) {
        xOffset += 27;
      } else if (i == 0 || i == 3) {
        xOffset += 12;
      } else if (i == 5 || i == 6) {
        xOffset -= 27;
      } else {
        xOffset -= 12;
      }
      if (i == 0 || i == 7) {
        yOffset += 27;
      } else if (i == 3 || i == 4) {
        yOffset -= 27;
      } else if (i == 1 || i == 6) {
        yOffset += 12;
      } else {
        yOffset -= 12;
      }
      canvas.drawCircle(
        Offset(xOffset, yOffset),
        i > start ? i - start + 2 : numOfDots - start + i + 2,
        Paint()
          ..color = Colors.white.withOpacity(
            (i > start ? i - start : numOfDots - start + i) * 0.1 + 0.45 > 1
                ? 1
                : (i > start ? i - start : numOfDots - start + i) * 0.1 + 0.45,
          ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
