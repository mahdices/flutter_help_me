import 'package:flutter/material.dart';

class HelpMeItem {
  final GlobalKey key;
  final Widget guideWidget;
  final HelpMeShape shape;

  HelpMeItem(
      {required this.key,
      this.shape = const HelpMeRectShape(),
      required this.guideWidget});
}

abstract class HelpMeShape {
  final double width;
  final Color color;
  const HelpMeShape({this.width = 3, this.color = Colors.white});
}

class HelpMeCustomShape extends HelpMeShape {
  final double width;
  final Color color;
  final Path path;

  HelpMeCustomShape(
      {required this.path, this.width = 3, this.color = Colors.white})
      : super(color: color, width: width);
}

class HelpMeOvalShape extends HelpMeShape {
  final double width;
  final Color color;
  const HelpMeOvalShape({this.width = 3, this.color = Colors.white})
      : super(color: color, width: width);
}

class HelpMeRectShape extends HelpMeShape {
  final double width;
  final Color color;
  final BorderRadius borderRadius;
  const HelpMeRectShape(
      {this.borderRadius = const BorderRadius.all(Radius.circular(8)),
      this.width = 3,
      this.color = Colors.white})
      : super(color: color, width: width);
}
