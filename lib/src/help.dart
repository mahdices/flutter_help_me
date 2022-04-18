import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'guide.dart';
import 'help_me_clipper.dart';

class Help extends StatefulWidget {
  List<HelpMeItem> guides;
  Size? size;
  BuildContext pageContext;
  Widget? nextButton;
  Widget? skipButton;

  Help(
      {Key? key,
      required this.guides,
      required this.pageContext,
      this.nextButton,
      this.skipButton})
      : super(key: key) {
    size = Size(MediaQuery.of(pageContext).size.width,
        MediaQuery.of(pageContext).size.height);
  }

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  int selected = 0;
  bool isShowing = true;
  RenderBox? currentBox;
  Offset get currentPosition =>
      currentBox?.localToGlobal(Offset.zero) ?? Offset(0, 0);
  RenderBox? nextButtonBox;
  // RenderBox? guidBox;
  GlobalKey? skipButtonKey;
  var nextKey = GlobalKey();
  var oldSize;

  List<Widget> getItemsOnPage(bool reverse) {
    List<Widget> list = [];
    if (reverse) {
      list.add(_buttons());
      list.add(_guid());
    } else {
      list.add(_guid());
      list.add(_buttons());
    }

    return list;
  }

  _nextGuide() async {
    // guidBox = widget.guides[selected].guidKey.currentContext!.findRenderObject()
    //     as RenderBox;

    // await Future.delayed(Duration(milliseconds: 1000));
    if (widget.guides.length - 1 == selected) {
      _skip();
      return;
    }
    setState(() {
      selected++;
      currentBox = widget.guides[selected].key.currentContext!
          .findRenderObject() as RenderBox;
    });
  }

  _skip() {
    Navigator.of(context).pop();
  }

  _buttons() {
    if (widget.nextButton == null) {
      return Container();
    }

    var align = Alignment.bottomCenter;
    if (nextButtonBox != null) {
      var nextButtonPos = nextButtonBox!.localToGlobal(Offset.zero).dy;
      // var guidPos = guidBox!.localToGlobal(Offset.zero).dy;
      if (currentPosition.dy + (currentBox?.size.height ?? 0) >
          (nextButtonPos + ((widget.size!.height / 2) - nextButtonPos))) {
        align = Alignment.topCenter;
      }
    }

    return AnimatedAlign(
      duration: Duration(milliseconds: 200),
      alignment: align,
      child: Padding(
        padding: MediaQuery.of(widget.pageContext).padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.skipButton != null
                ? GestureDetector(
                    child: widget.skipButton,
                    onTap: () {
                      _skip();
                    },
                  )
                : Container(),
            GestureDetector(
              child: widget.nextButton,
              onTap: () {
                _nextGuide();
              },
            ),
          ],
        ),
      ),
    );
  }

  _guid() {
    var buttonIsBottom = true;
    double buttonHeight = 0;
    double guideHeight = 0;

    double guideTopPadding = 0;
    double guideBottomPadding = 0;

    if (nextButtonBox != null) {
      buttonHeight = nextButtonBox!.size.height;
      guideHeight = currentBox!.size.height;
      if (currentPosition.dy + (currentBox?.size.height ?? 0) >
          (nextButtonBox!.localToGlobal(Offset.zero).dy +
              ((widget.size!.height / 2) -
                  nextButtonBox!.localToGlobal(Offset.zero).dy))) {
        buttonIsBottom = false;
      }
    }
    var align = Alignment.bottomCenter;

    if (buttonIsBottom) {
      if (widget.size!.height -
              currentPosition.dy +
              (currentBox?.size.height ?? 0) -
              buttonHeight >
          currentPosition.dy) {
        guideBottomPadding = buttonHeight;
        align = Alignment.bottomCenter;
      } else {
        align = Alignment.topCenter;
      }
    } else {
      // change if button is top and text is bellow state 2
      guideTopPadding = buttonHeight;
      align = Alignment.topCenter;
    }

    return AnimatedAlign(
      duration: Duration(milliseconds: 200),
      alignment: align,
      child: Padding(
        padding: MediaQuery.of(widget.pageContext).padding,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: isShowing
              ? Padding(
                  padding: EdgeInsets.only(
                      top: guideTopPadding, bottom: guideBottomPadding),
                  child: widget.guides[selected].guideWidget,
                )
              : Container(),
        ),
      ),
    );
  }

  @override
  void initState() {
    currentBox = widget.guides[selected].key.currentContext!.findRenderObject()
        as RenderBox;

    widget.nextButton = Container(
      child: widget.nextButton,
      key: nextKey,
    );
    Future.delayed(Duration(milliseconds: 200), () => postFrameCallback());
    // WidgetsBinding.instance?.addPostFrameCallback((_) => postFrameCallback());
    super.initState();
  }

  void postFrameCallback() {
    var context = nextKey.currentContext;
    if (context == null) return;
    var newSize = context.findRenderObject() as RenderBox;

    setState(() {
      nextButtonBox = newSize;
      // guidBox = newSizeGuid;
      var nextButtonPos = nextButtonBox!.localToGlobal(Offset.zero).dy;
      // var guidPos = guidBox!.localToGlobal(Offset.zero).dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (widget.nextButton != null && nextButtonBox == null) {
    //   print("renderBox");
    //   var w1 = WidgetSize(
    //       onChange: (RenderBox renderBox) {
    //         print("renderBox");
    //       },
    //       child: widget.nextButton!);
    // }
    // if (widget.nextButton != null && nextButtonKey == null) {
    //   nextButtonKey = GlobalKey();
    //   widget.nextButton =
    //       Container(child: widget.nextButton, key: nextButtonKey);
    // }
    // if (widget.skipButton != null && skipButtonKey == null) {
    //   skipButtonKey = GlobalKey();
    //   widget.skipButton =
    //       Container(child: widget.skipButton, key: skipButtonKey);
    // }

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: Builder(builder: (context) {
              if (widget.size != null) {
                print(currentPosition.dy);
                print((widget.size!.height / 2));

                if (currentPosition.dy < 0 ||
                    currentPosition.dy > widget.size!.height) {
                  isShowing = false;
                  _moveScroll(currentBox!);
                  // widget.scrollController!.jumpTo(
                  //   position.dy,
                  // );

                }
              }

              return isShowing
                  ? Container(
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        child: CustomPaint(
                          key: ValueKey(widget.guides[selected].key.hashCode),
                          painter: HelpMeClipper(
                              widget.guides[selected].key, currentBox!,
                              shape: widget.guides[selected].shape),
                          child: Container(
                            color: Colors.black.withOpacity(0.01),
                          ),
                        ),
                      ),
                    )
                  : Container();
            }),
          ),
          // if (currentPosition.dy < 0 ||
          //     currentPosition.dy > widget.size!.height)
          //   Container()
          // else
          _buttons(),
          _guid()
        ],
      ),
    );
  }

  _moveScroll(
    RenderBox box,
  ) async {
    // Offset position = box.localToGlobal(Offset.zero);
    // double scroll = 0;
    // if (position.dy > widget.size!.height) {
    //   scroll = position.dy -
    //       widget.scrollController!.offset +
    //       box.paintBounds.height;
    // } else {
    //   scroll = position.dy + widget.scrollController!.offset;
    // }
    // print(scroll);
    // widget.scrollController!.jumpTo(scroll);
    Scrollable.ensureVisible(widget.guides[selected].key.currentContext!,
        duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    // widget.scrollController!.animateTo(
    //   scroll,
    //   duration: Duration(milliseconds: 200),
    //   curve: Curves.easeIn,
    // );
    await Future.delayed(Duration(milliseconds: 600));
    setState(() {
      isShowing = true;
    });
  }
}
