import 'package:flutter/material.dart';

import 'guide.dart';

class HelpMePainter extends CustomPainter {
  GlobalKey key;
  RenderBox box;
  HelpMeShape shape;
  HelpMePainter(this.key, this.box, {required this.shape});
  @override
  void paint(Canvas canvas, Size size) {
    // Path path0 = Path();

    // var size2 = Size(300, 300);

    // var bound = box;
    var size2 = box.size;

    Path path0;
    if (shape is HelpMeCustomShape) {
      path0 = (shape as HelpMeCustomShape).path;
    } else if (shape is HelpMeOvalShape) {
      path0 = Path()
        ..addOval(Rect.fromLTWH(box.paintBounds.left, box.paintBounds.top,
            box.paintBounds.width, box.paintBounds.height));
    } else if (shape is HelpMeRectShape) {
      path0 = Path()
        ..addRRect(RRect.fromRectAndCorners(box.paintBounds,
            bottomLeft: (shape as HelpMeRectShape).borderRadius.bottomLeft,
            bottomRight: (shape as HelpMeRectShape).borderRadius.bottomRight,
            topLeft: (shape as HelpMeRectShape).borderRadius.topLeft,
            topRight: (shape as HelpMeRectShape).borderRadius.topRight));
    } else {
      path0 = Path()..addRRect(RRect.fromRectAndCorners(box.paintBounds));
    }
    var path = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height))
      ..addPath(path0, box.localToGlobal(Offset.zero))
      // ..addOval(Rect.fromCircle(center: position, radius: 40))
      ..fillType = PathFillType.evenOdd;
    var paint = Paint();
    paint.color = Colors.black87;

    paint.style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
    var path2 = Path()..addPath(path0, box.localToGlobal(Offset.zero));
    var paint2 = Paint()..color = shape.color;
    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 5;
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HelpMeClipper extends CustomClipper<Path> {
  GlobalKey key;
  RenderBox box;
  HelpMeShape shape;
  HelpMeClipper(this.key, this.box, {required this.shape});
  @override
  Path getClip(Size size) {
    var size2 = box.size;

    Path path0;
    if (shape is HelpMeCustomShape) {
      path0 = (shape as HelpMeCustomShape).path;
    } else if (shape is HelpMeOvalShape) {
      path0 = Path()
        ..addOval(Rect.fromLTWH(box.paintBounds.left, box.paintBounds.top,
            box.paintBounds.width, box.paintBounds.height));
    } else if (shape is HelpMeRectShape) {
      path0 = Path()
        ..addRRect(RRect.fromRectAndCorners(box.paintBounds,
            bottomLeft: (shape as HelpMeRectShape).borderRadius.bottomLeft,
            bottomRight: (shape as HelpMeRectShape).borderRadius.bottomRight,
            topLeft: (shape as HelpMeRectShape).borderRadius.topLeft,
            topRight: (shape as HelpMeRectShape).borderRadius.topRight));
    } else {
      path0 = Path()..addRRect(RRect.fromRectAndCorners(box.paintBounds));
    }
    var path = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height))
      ..addPath(path0, box.localToGlobal(Offset.zero))
      // ..addOval(Rect.fromCircle(center: position, radius: 40))
      ..fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
