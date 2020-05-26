import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildContainer("Container 1", Colors.purple, false),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          buildContainer("Container 2", Colors.yellow, true),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          buildContainer("Container 3", Colors.cyanAccent, true),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildContainer("Container 4", Colors.deepOrange, false),
                    ],
                  ),
                ],
              )),

        ));
  }

  Container buildContainer(String text, Color color, bool small) {
    if(small) {
      return Container(
        width: 100,
        height: 100,
        color: color,
        child: Text(text),
      );
    } else {
      return Container(
        width: 100,
        height: 630,
        color: color,
        child: Text(text),
      );
    }
  }
}
