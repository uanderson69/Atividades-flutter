import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;

  final perguntas = [
    "Sua cor favorita",
    "Sua rede social favorita",
    "Seu alimento favorito",
    "Seu animal favorito"
  ];

  void eventobotao() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
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
                Text(perguntas[contador]),
                ElevatedButton(
                  onPressed: eventobotao,
                  child: Text("Clique"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Outra função");
                  },
                  child: Text("Clique"),
                ),
                ElevatedButton(
                  onPressed: () => print("Função arrow"),
                  child: Text("Meu botao"),
                ),
              ],
            )));
  }
}
