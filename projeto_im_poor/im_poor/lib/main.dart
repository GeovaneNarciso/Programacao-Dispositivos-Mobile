import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("I'm Poor"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Image(
            image: AssetImage("images/coal.png")
        ),
      )
    )
  ));
}