import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['azul', 'amarelo', 'vermelho', 'verde']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['cachorro', 'gato', 'papagaio', 'rato']
    },
    {
      'texto': 'Qual é o seu dia da semana favorito?',
      'respostas': ['segunda', 'quarta', 'sexta', 'domingo']
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
    List<String> respostas = temPSelect
        ? _perguntas[_perguntaSelecionada]['respostas'] as List<String>
        : [];
    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPSelect
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)),
                ],
              )
            : Center(
                child: Text(
                  'Vai se foder',
                  style: TextStyle(fontSize: 28),
                ),
              ),
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
