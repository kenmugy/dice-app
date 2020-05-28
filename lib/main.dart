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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(child: Image.asset('images/dice6.png')),
          ),
          Expanded(
            child: FlatButton(child: Image.asset('images/dice3.png')),
          ),
        ],
      ),
    );
  }
}
