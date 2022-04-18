import 'package:flutter/material.dart';

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawPath(getPath(size), paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Path getPath(Size size) {
  Path path0 = Path();
  path0.moveTo(size.width * 0.4051917, size.height * 0.3986763);
  path0.lineTo(size.width * 0.5550000, size.height * 0.2158273);
  path0.lineTo(size.width * 0.6783333, size.height * 0.4474820);
  path0.lineTo(size.width * 0.5308333, size.height * 0.6043165);
  path0.lineTo(size.width * 0.4051917, size.height * 0.3986763);
  path0.close();
  return path0;
}
