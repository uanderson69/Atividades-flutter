import 'package:flutter/material.dart';
import './questionario.dart';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questionário'),
        ),
        body: Questionario(),
      ),
    );
  }
}
