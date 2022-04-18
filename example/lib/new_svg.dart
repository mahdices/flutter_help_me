import 'dart:ui';

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8535523, size.height * 0.1530197);
    path_0.cubicTo(
        size.width * 0.7591158,
        size.height * 0.05858110,
        size.width * 0.6335546,
        size.height * 0.006572009,
        size.width * 0.4999990,
        size.height * 0.006572009);
    path_0.lineTo(size.width * 0.4999990, size.height * 0.08785845);
    path_0.cubicTo(
        size.width * 0.7308789,
        size.height * 0.08785845,
        size.width * 0.9187115,
        size.height * 0.2756931,
        size.width * 0.9187115,
        size.height * 0.5065730);
    path_0.lineTo(size.width * 0.9187115, size.height * 0.5326233);
    path_0.cubicTo(
        size.width * 0.9688206,
        size.height * 0.5814338,
        size.width * 0.9999980,
        size.height * 0.6495884,
        size.width * 0.9999980,
        size.height * 0.7249003);
    path_0.lineTo(size.width * 0.9999980, size.height * 0.5065730);
    path_0.cubicTo(
        size.width,
        size.height * 0.3730174,
        size.width * 0.9479909,
        size.height * 0.2474562,
        size.width * 0.8535523,
        size.height * 0.1530197);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff005ECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1464456, size.height * 0.1530197);
    path_1.cubicTo(size.width * 0.05200910, size.height * 0.2474562, 0,
        size.height * 0.3730174, 0, size.height * 0.5065730);
    path_1.lineTo(0, size.height * 0.7249003);
    path_1.lineTo(size.width * 0.3498142, size.height * 0.7249003);
    path_1.lineTo(size.width * 0.3498142, size.height * 0.4563705);
    path_1.lineTo(size.width * 0.2685277, size.height * 0.4563705);
    path_1.cubicTo(
        size.width * 0.1957723,
        size.height * 0.4563705,
        size.width * 0.1296945,
        size.height * 0.4854690,
        size.width * 0.08128644,
        size.height * 0.5326213);
    path_1.lineTo(size.width * 0.08128644, size.height * 0.5065710);
    path_1.cubicTo(
        size.width * 0.08128644,
        size.height * 0.2756911,
        size.width * 0.2691211,
        size.height * 0.08785642,
        size.width * 0.4999990,
        size.height * 0.08785642);
    path_1.lineTo(size.width * 0.4999990, size.height * 0.006569976);
    path_1.cubicTo(
        size.width * 0.3664454,
        size.height * 0.006572009,
        size.width * 0.2408842,
        size.height * 0.05858110,
        size.width * 0.1464456,
        size.height * 0.1530197);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff2488FF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(0, size.height * 0.7249003);
    path_2.cubicTo(
        0,
        size.height * 0.8729676,
        size.width * 0.1204604,
        size.height * 0.9934280,
        size.width * 0.2685277,
        size.height * 0.9934280);
    path_2.lineTo(size.width * 0.3498142, size.height * 0.9934280);
    path_2.lineTo(size.width * 0.3498142, size.height * 0.7249003);
    path_2.lineTo(0, size.height * 0.7249003);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff005ECE).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9187136, size.height * 0.5326233);
    path_3.cubicTo(
        size.width * 0.8703055,
        size.height * 0.4854711,
        size.width * 0.8042277,
        size.height * 0.4563726,
        size.width * 0.7314723,
        size.height * 0.4563726);
    path_3.lineTo(size.width * 0.6501858, size.height * 0.4563726);
    path_3.lineTo(size.width * 0.6501858, size.height * 0.7249003);
    path_3.lineTo(size.width, size.height * 0.7249003);
    path_3.cubicTo(
        size.width,
        size.height * 0.6495884,
        size.width * 0.9688226,
        size.height * 0.5814317,
        size.width * 0.9187136,
        size.height * 0.5326233);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff00479B).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.6501858, size.height * 0.7249003);
    path_4.lineTo(size.width * 0.6501858, size.height * 0.9934280);
    path_4.lineTo(size.width * 0.7314723, size.height * 0.9934280);
    path_4.cubicTo(size.width * 0.8795396, size.height * 0.9934280, size.width,
        size.height * 0.8729676, size.width, size.height * 0.7249003);
    path_4.lineTo(size.width * 0.6501858, size.height * 0.7249003);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff003068).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Path getPath2(Size size) {
  var path = Path();
  Path path_0 = Path();
  path_0.moveTo(size.width * 0.8535523, size.height * 0.1530197);
  path_0.cubicTo(
      size.width * 0.7591158,
      size.height * 0.05858110,
      size.width * 0.6335546,
      size.height * 0.006572009,
      size.width * 0.4999990,
      size.height * 0.006572009);
  path_0.lineTo(size.width * 0.4999990, size.height * 0.08785845);
  path_0.cubicTo(
      size.width * 0.7308789,
      size.height * 0.08785845,
      size.width * 0.9187115,
      size.height * 0.2756931,
      size.width * 0.9187115,
      size.height * 0.5065730);
  path_0.lineTo(size.width * 0.9187115, size.height * 0.5326233);
  path_0.cubicTo(
      size.width * 0.9688206,
      size.height * 0.5814338,
      size.width * 0.9999980,
      size.height * 0.6495884,
      size.width * 0.9999980,
      size.height * 0.7249003);
  path_0.lineTo(size.width * 0.9999980, size.height * 0.5065730);
  path_0.cubicTo(size.width, size.height * 0.3730174, size.width * 0.9479909,
      size.height * 0.2474562, size.width * 0.8535523, size.height * 0.1530197);
  path_0.close();
  path.addPath(path_0, Offset.zero);
  Path path_1 = Path();
  path_1.moveTo(size.width * 0.1464456, size.height * 0.1530197);
  path_1.cubicTo(size.width * 0.05200910, size.height * 0.2474562, 0,
      size.height * 0.3730174, 0, size.height * 0.5065730);
  path_1.lineTo(0, size.height * 0.7249003);
  path_1.lineTo(size.width * 0.3498142, size.height * 0.7249003);
  path_1.lineTo(size.width * 0.3498142, size.height * 0.4563705);
  path_1.lineTo(size.width * 0.2685277, size.height * 0.4563705);
  path_1.cubicTo(
      size.width * 0.1957723,
      size.height * 0.4563705,
      size.width * 0.1296945,
      size.height * 0.4854690,
      size.width * 0.08128644,
      size.height * 0.5326213);
  path_1.lineTo(size.width * 0.08128644, size.height * 0.5065710);
  path_1.cubicTo(
      size.width * 0.08128644,
      size.height * 0.2756911,
      size.width * 0.2691211,
      size.height * 0.08785642,
      size.width * 0.4999990,
      size.height * 0.08785642);
  path_1.lineTo(size.width * 0.4999990, size.height * 0.006569976);
  path_1.cubicTo(
      size.width * 0.3664454,
      size.height * 0.006572009,
      size.width * 0.2408842,
      size.height * 0.05858110,
      size.width * 0.1464456,
      size.height * 0.1530197);
  path_1.close();

  path.addPath(path_1, Offset.zero);

  Path path_2 = Path();
  path_2.moveTo(0, size.height * 0.7249003);
  path_2.cubicTo(0, size.height * 0.8729676, size.width * 0.1204604,
      size.height * 0.9934280, size.width * 0.2685277, size.height * 0.9934280);
  path_2.lineTo(size.width * 0.3498142, size.height * 0.9934280);
  path_2.lineTo(size.width * 0.3498142, size.height * 0.7249003);
  path_2.lineTo(0, size.height * 0.7249003);
  path_2.close();
  path.addPath(path_2, Offset.zero);

  Path path_3 = Path();
  path_3.moveTo(size.width * 0.9187136, size.height * 0.5326233);
  path_3.cubicTo(
      size.width * 0.8703055,
      size.height * 0.4854711,
      size.width * 0.8042277,
      size.height * 0.4563726,
      size.width * 0.7314723,
      size.height * 0.4563726);
  path_3.lineTo(size.width * 0.6501858, size.height * 0.4563726);
  path_3.lineTo(size.width * 0.6501858, size.height * 0.7249003);
  path_3.lineTo(size.width, size.height * 0.7249003);
  path_3.cubicTo(size.width, size.height * 0.6495884, size.width * 0.9688226,
      size.height * 0.5814317, size.width * 0.9187136, size.height * 0.5326233);
  path_3.close();
  path.addPath(path_3, Offset.zero);

  Path path_4 = Path();
  path_4.moveTo(size.width * 0.6501858, size.height * 0.7249003);
  path_4.lineTo(size.width * 0.6501858, size.height * 0.9934280);
  path_4.lineTo(size.width * 0.7314723, size.height * 0.9934280);
  path_4.cubicTo(size.width * 0.8795396, size.height * 0.9934280, size.width,
      size.height * 0.8729676, size.width, size.height * 0.7249003);
  path_4.lineTo(size.width * 0.6501858, size.height * 0.7249003);
  path_4.close();

  path.addPath(path_4, Offset.zero);

  return path;
}
