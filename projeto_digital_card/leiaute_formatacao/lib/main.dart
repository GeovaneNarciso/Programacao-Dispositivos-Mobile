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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildContainer("Container 1", Colors.purple),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildContainer("Container 2", Colors.yellow),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildContainer("Container 3", Colors.deepOrange),
                  ],
                ),
              ],
            )),
        
    ));
  }

  Container buildContainer(String text, Color color) {
    return Container(
      width: 390,
      height: 200,
      color: color,
      child: Text(text),
    );
  }
}
