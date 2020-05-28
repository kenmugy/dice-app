import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text("Dicee")),
        ),
        body: DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () => print("u clicked left button"),
                child: Image.asset('images/dice3.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () => print("u clicked right button"),
                child: Image.asset('images/dice3.png')),
          ),
        ],
      ),
    );
  }
}


