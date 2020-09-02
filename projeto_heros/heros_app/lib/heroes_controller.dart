import 'package:flutter/material.dart';

import 'hero_model.dart';

class HeroesController extends ChangeNotifier{
  List<HeroModel> heroes = [
    HeroModel(name: "Son Goku"),
    HeroModel(name: "Hatake Kakashi"),
    HeroModel(name: "Yusuke Urameshi"),
    HeroModel(name: "Shiryu de Dragão"),
    HeroModel(name: "Jon"),
  ];

  checkFavorite(HeroModel model) {
    model.isFavorite = !model.isFavorite;
    notifyListeners();
  }
}