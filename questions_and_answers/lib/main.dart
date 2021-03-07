import 'package:flutter/material.dart';
import 'questao.dart';
import 'respostas.dart';

main() => runApp(PerguntaApp());

//esse "_" antes do nome quer dizer que ele é privado para outros arquivos
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var appBar = 'Normal';
  //esse metodo, toda vez que for mudada, a build
  //vai refazer toda a interface grafica
  void _responder() {
    setState(() {
      _perguntaSelecionada = _perguntaSelecionada + 1;
      appBar = 'Selecionada';
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é o seu animal favorito ?'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Container(
                width: double.infinity,
                child: Text(
                  'Perguntas',
                  textAlign: TextAlign.center,
                ),
              ),
              backgroundColor: Colors.purple,
            ),
            body: Column(children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]),
              RaisedButton(
                child: Respostas('Resposta 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Respostas('Resposta 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Respostas('Resposta 3'),
                onPressed: null,
              )
            ])));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
