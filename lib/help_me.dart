export 'src/guide.dart';

import 'package:flutter/material.dart';
import 'package:help_me/src/guide.dart';
import 'package:help_me/src/help.dart';

class HelpMe {
  static showHelp(
      {required List<HelpMeItem> items,
      required BuildContext pageContext,
      required Widget nextWidget,
      Color? color,
      Gradient? gradient,
      required Widget skipWidget}) {
    showModalBottomSheet(
        elevation: 0,
        context: pageContext,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        barrierColor: Colors.transparent,
        builder: (_) {
          return Help(
            nextButton: nextWidget,
            skipButton: skipWidget,
            guides: items,
            gradient: gradient,
            color: color,
            pageContext: pageContext,
          );
        });
  }
}
