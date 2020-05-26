import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/Geovane.jpg'),
              ),
              Text(
                'Geovane Narciso',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.deepOrange.shade100,
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 240.0,
                child: Divider(
                  color: Colors.deepOrange.shade100,
                ),
              ),
              buildCard('(86) 9 1234 5678', Icons.phone),
              buildCard('geovane.ns@msn.com', Icons.email),
            ],
          ),
        ),
      ),
    ),
  );
}

Card buildCard(String text, IconData icon) {
  return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.deepOrange,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20.0,
          ),
        ),
      ));
}
