import 'package:flutter/material.dart';

void main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  _ComponenteInicialState createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  String telaSelecionada = '';

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Atividade avaliativa"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  telaSelecionada = 'TELA AZUL';
                });
              },
              child: Text("TELA AZUL"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  telaSelecionada = 'TELA VERDE';
                });
              },
              child: Text("TELA VERDE"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  telaSelecionada = 'TELA PRETA';
                });
              },
              child: Text("TELA PRETA"),
            ),
            if (telaSelecionada.isNotEmpty)
              Expanded(
                child: Container(
                  color: _getCorTelaSelecionada(telaSelecionada),
                  child: Center(
                    child: Text(
                      telaSelecionada,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Color _getCorTelaSelecionada(String tela) {
    switch (tela) {
      case 'TELA AZUL':
        return Colors.blue;
      case 'TELA VERDE':
        return Colors.green;
      case 'TELA PRETA':
        return Colors.black;
      default:
        return Colors.transparent;
    }
  }
}
