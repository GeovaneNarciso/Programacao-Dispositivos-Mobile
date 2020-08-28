import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Like/Dislike"),
          backgroundColor: Colors.black12,
        ),
        body: LikeDislikePage(),
      ),
    )
  );
}

class LikeDislikePage extends StatefulWidget {
  @override
  _LikeDislikePageState createState() => _LikeDislikePageState();
}

class _LikeDislikePageState extends State<LikeDislikePage> {
  var buttonLike = "like_inativo";
  var buttonDislike = "dislike_inativo";

  void likePressed () {
    setState(() {
      buttonLike = "like_ativo";
      buttonDislike = "dislike_inativo";
    });
  }

  void dislikePressed () {
    setState(() {
      buttonLike = "like_inativo";
      buttonDislike = "dislike_ativo";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                child: Image.asset('images/$buttonLike.jpg'),
                onPressed: () {
                  likePressed();
                },
              )
          ),
          Expanded(
              child: FlatButton(
                child: Image.asset('images/$buttonDislike.jpg'),
                onPressed: () {
                  dislikePressed();
                },
              )
          )
        ],
      ),
    );
  }
}
