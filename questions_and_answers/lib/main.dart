import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

main() => runApp(PerguntaApp());

//esse "_" antes do nome quer dizer que ele é privado para outros arquivos
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var appBar = 'Normal';
  //esse metodo, toda vez que for mudada, a build
  //vai refazer toda a interface grafica (na verdade não toda, mas vai buscar em toda, e mudar oque for necessario)
  //o flutter é cirurgico nessa parte
  void _responder() {
    setState(() {
      _perguntaSelecionada = _perguntaSelecionada + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita ?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual seu animal favorito ?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu instruturo favorito ?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      }
    ];
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];
    List<Widget> widgets = [];
    for (var TextoResp in respostas) {
      widgets.add(Resposta(TextoResp, _responder));
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Container(
                width: double.infinity,
                child: Text(
                  'Perguntas',
                  textAlign: TextAlign.center,
                ),
              ),
              backgroundColor: Colors.blue,
            ),
            body: Column(children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]['texto']),
              ...widgets,
              /*widgets[0],
              widgets[1],
              widgets[2],
              widgets[3] 
              
              observe os três pontos ali em cima que substituem esse método*/
            ])));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
