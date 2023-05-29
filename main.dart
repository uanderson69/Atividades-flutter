import 'package:flutter/material.dart';

void main() {
  runApp(QuestionnaireApp());
}

class QuestionnaireApp extends StatefulWidget {
  @override
  _QuestionnaireAppState createState() => _QuestionnaireAppState();
}

class _QuestionnaireAppState extends State<QuestionnaireApp> {
  final List<Map<String, dynamic>> questions = [
    {
      'pergunta': 'Quantas capitais o Brasil tem?',
      'alternativas': ['20', '27', '25', '30'],
      'resposta': '',
    },
    {
      'pergunta': 'O brasil é considerado o maior pais do mundo?',
      'alternativas': ['Sim', 'Nao'],
      'resposta': '',
    },
    {
      'pergunta': 'Quantos planetas existem no sistema solar?',
      'alternativas': ['7', '8', '9', '10'],
      'resposta': '',
    },
  ];

  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perguntas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[currentQuestionIndex]['pergunta']!,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Column(
                children: List<Widget>.generate(
                  questions[currentQuestionIndex]['alternativas'].length,
                  (index) => RadioListTile(
                    title: Text(questions[currentQuestionIndex]['alternativas'][index]),
                    value: questions[currentQuestionIndex]['alternativas'][index],
                    groupValue: questions[currentQuestionIndex]['resposta'],
                    onChanged: (value) {
                      setState(() {
                        questions[currentQuestionIndex]['resposta'] = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (currentQuestionIndex < questions.length - 1) {
                      currentQuestionIndex++;
                    } else {
                      // Questionário concluído
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Questionário concluído'),
                            content: Text('O questionário foi respondido.'),
                            actions: [
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  });
                },
                child: Text(
                  currentQuestionIndex < questions.length - 1 ? 'Enviar' : 'Finalizar questionário',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}