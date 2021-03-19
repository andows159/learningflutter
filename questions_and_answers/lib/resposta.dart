import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red,
        child: Text(
          texto,
          style: TextStyle(fontSize: 22),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
