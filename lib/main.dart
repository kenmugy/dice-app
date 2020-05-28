import 'dart:math';
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
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  void geneRand() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () => geneRand(),
                child: Image.asset('images/dice$leftDiceNum.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () => geneRand(),
                child: Image.asset('images/dice$rightDiceNum.png')),
          ),
        ],
      ),
    );
  }
}
