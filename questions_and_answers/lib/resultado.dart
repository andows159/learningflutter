import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao < 8)
      return 'Trainner';
    else if (pontuacao < 12)
      return "Júnior";
    else if (pontuacao < 16)
      return "Pleno";
    else
      return "Sênior";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Você fez um total de $pontuacao pontos!",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        Center(
            child: Text(
          "Portanto seu nível é $fraseResultado",
          style: TextStyle(fontSize: 28, color: Colors.red),
        ))
      ],
    );
  }
}
