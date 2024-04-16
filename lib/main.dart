import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'azul', 'nota': 10},
        {'texto': 'amarelo', 'nota': 20},
        {'texto': 'vermelho', 'nota': 30},
        {'texto': 'verde', 'nota': 40},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'cachorro', 'nota': 10},
        {'texto': 'gato', 'nota': 20},
        {'texto': 'papagaio', 'nota': 30},
        {'texto': 'rato', 'nota': 40},
      ]
    },
    {
      'texto': 'Qual é o seu dia da semana favorito?',
      'respostas': [
        {'texto' : 'segunda', 'nota' : 20},
        {'texto' : 'quarta', 'nota' : 30},
        {'texto' : 'sexta', 'nota' : 40},
        {'texto' : 'domingo', 'nota' : 50},
      ]
    },
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPSelect {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPSelect
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
