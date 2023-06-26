import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final List<String> respostas;
  final void Function() reiniciarQuestionario;

  Resultado(this.respostas, this.reiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Questionário Finalizado!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          'Respostas:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        for (var resposta in respostas)
          Text(
            resposta,
            style: TextStyle(fontSize: 16),
          ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: Text('Reiniciar'),
        ),
      ],
    );
  }
}
