import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List questoes = [
    "Qual seu jogo preferido?",
    "Qual o seu personagem favorito?",
    "Qual seu console favorito?",
    "Qual sua cor favorita?"
  ];
  List respostas = [
    "GTAV", "LOL", "Dota2", "Trevor", "Yasuo", "Sniper",
    "Xbox", "Playstation", "Nintendo Switch", "Vermelho",
    "Amarelo", "Azul"
  ];

  String resposta = "Resposta";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Primeiro app"),
            bottom: TabBar(
                tabs: [
                  Tab(text: "Pergunta 1"),
                  Tab(text: "Pergunta 2"),
                  Tab(text: "Pergunta 3"),
                  Tab(text: "Pergunta 4"),
                ],
            ),
          ),
          body: TabBarView(
              children: [
                buildColumn(0, 0),
                buildColumn(1, 3),
                buildColumn(2, 6),
                buildColumn(3, 9),
              ]),
        )
    );
  }
  Widget buildColumn(int indexQuestao, int indexPergunta) {
    return new Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(questoes[indexQuestao], style: TextStyle(fontSize: 20.0),),
              Padding(padding: EdgeInsets.all(10.0)),
              buildButton(indexPergunta),
              buildButton(indexPergunta + 1),
              buildButton(indexPergunta + 2),
            ],
          ),),
      ],
    );
  }
  Widget buildButton(int index) {
    return new RaisedButton(
        child: Text(respostas[index]),
        color: Colors.teal,
        onPressed: () {
          _respostaClicada(respostas[index]);
        });
  }
  Future<void> _respostaClicada(String r) async {
    setState(() {
      resposta = r;
    });
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resposta"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(resposta),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
