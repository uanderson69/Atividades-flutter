import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatelessWidget {
  void eventobotao() {
    print("Clicou");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Perguntas e respostas!"),
            ),
            body: Column(
              children: [
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("Meu botao"),
                ),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("Meu botao"),
                ),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("Meu botao"),
                ),
                Column(children: <Widget>[
                  Text('Aprendendo'),
                  Text('Programação'),
                  Text('Flutter'),
                ]),
              ],
            )));
  }
}
