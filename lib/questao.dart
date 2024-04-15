import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String txt;

  Questao(this.txt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        txt,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
