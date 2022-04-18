import 'dart:ui';

import 'package:example/new_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:help_me/help_me.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  GlobalKey textKeyHello = GlobalKey();
  GlobalKey textKeyArrow = GlobalKey();
  GlobalKey textKeyHeadphone = GlobalKey();
  GlobalKey textKeyList = GlobalKey();
  GlobalKey textKeyButton = GlobalKey();
  ScrollController scrollController = ScrollController();

  // var custom = CustomPaint(
  //   key: textKey22,
  //   // size: Size(300,
  //   //     300), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
  //   painter: RPSCustomPainter(),
  // );

  @override
  Widget build(BuildContext context) {
    var appbar = AppBar(
      title: Text("Flutter HelpMe"),
    );
    return Scaffold(
      appBar: appbar,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
                Container(
                  key: textKeyHello,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Text(
                    'Hello This is Example',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Text(
                    'A custom painter from svg',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Icon(Icons.arrow_downward_rounded, key: textKeyArrow),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    width: 100,
                    height: 100,
                    child: CustomPaint(
                      key: textKeyHeadphone,

                      // size: Size(50,
                      //     70), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    )),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Test with a list!",
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((_, index) {
            return Card(
              key: index == 7 ? textKeyList : null,
              elevation: 10,
              color: Color.fromARGB(255, 58, 116, (index * 100) + 40),
              margin:
                  const EdgeInsets.only(right: 16, left: 16, bottom: 8, top: 8),
              child: Container(
                margin: const EdgeInsets.all(24),
                child: Text("Item : $index"),
              ),
            );
          }, childCount: 10)),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        key: textKeyButton,
        onPressed: () async {
          var currentBox =
              textKeyHeadphone.currentContext!.findRenderObject() as RenderBox;
          HelpMe.showHelp(
              items: [
                HelpMeItem(
                    key: textKeyButton,
                    shape: const HelpMeRectShape(
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    // shape:
                    //     HelperCustomShape(path: getPath(currentBox.size)),
                    guideWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                HelpMeItem(
                    key: textKeyHello,
                    shape: const HelpMeRectShape(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    // shape:
                    //     HelperCustomShape(path: getPath(currentBox.size)),
                    guideWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                HelpMeItem(
                    key: textKeyArrow,
                    shape: HelpMeOvalShape(color: Colors.red, width: 8),
                    guideWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/arrow.gif',
                            height: 60,
                          ),
                          Text(
                            "This is an arrow",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )),
                HelpMeItem(
                    key: textKeyHeadphone,
                    shape: HelpMeCustomShape(path: getPath2(currentBox.size)),
                    guideWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                HelpMeItem(
                    key: textKeyList,
                    shape: HelpMeRectShape(),
                    guideWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Where can I get some?",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
              pageContext: context,
              nextWidget: Container(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24, top: 8, bottom: 8),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
              skipWidget: Container(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24, top: 8, bottom: 8),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )));
        },
        tooltip: 'Increment',
        label: Text("Help!"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
