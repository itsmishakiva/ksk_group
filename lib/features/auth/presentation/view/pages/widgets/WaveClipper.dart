import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0015333, size.height * 0.0022833);
    path_0.lineTo(size.width, size.height * 0.0033333);
    path_0.lineTo(size.width * 1.0001167, size.height * 0.8377167);
    path_0.quadraticBezierTo(size.width * 0.9165833, size.height * 0.9190667,
        size.width * 0.8320500, size.height * 0.9200000);
    path_0.cubicTo(
        size.width * 0.7489500,
        size.height * 0.9192833,
        size.width * 0.6650167,
        size.height * 0.8430500,
        size.width * 0.5000000,
        size.height * 0.8316667);
    path_0.cubicTo(
        size.width * 0.3385833,
        size.height * 0.8409000,
        size.width * 0.2527667,
        size.height * 0.9199167,
        size.width * 0.1678000,
        size.height * 0.9201000);
    path_0.quadraticBezierTo(size.width * 0.0787500, size.height * 0.9174833,
        size.width * -0.0033333, size.height * 0.8366667);
    path_0.lineTo(size.width * 0.0015333, size.height * 0.0022833);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
