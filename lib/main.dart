import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
        ),
        body: DiceBody(),
      ),
    ));

class DiceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
