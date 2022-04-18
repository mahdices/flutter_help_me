

# HelpMe!

Add flexiable user guide for pages of your application!

Example:

![](https://github.com/mahdices/flutter_help_me/blob/main/example/sample/sample.gif)

## Usage

```dart
HelpMe.showHelp(
            color: Colors.amber.withOpacity(0.2),
            gradient: LinearGradient(colors: [
              Colors.purple.withOpacity(0.2),
              Colors.blue.withOpacity(0.2),
            ]),items: [
            HelpMeItem(
                    key: keyButton,
                    shape: const HelpMeRectShape(
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    guideWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Lorem Guide",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    ...
          ], pageContext: context, nextWidget: Text("Next"), skipWidget: Text("Skip"));
```

## Notable References 

- [Documentation for Key in flutter](https://api.flutter.dev/flutter/foundation/Key-class.html)
- [Documentation for CustomPainter in flutter](https://api.flutter.dev/flutter/rendering/CustomPainter-class.html)
- [Documentation for CustomClipper in flutter](https://api.flutter.dev/flutter/rendering/CustomClipper-class.html)

## End

If you have some suggestion or advice, please open an issue or develop the fix and open a pull request. This will greatly help the improvement of the usability of this project. Thanks.