import 'package:flutter/material.dart';
import 'package:heros_app/heroes_controller.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HeroesController>.value(value: HeroesController(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hero app",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeWidget(),
      ),
    );
  }
}

