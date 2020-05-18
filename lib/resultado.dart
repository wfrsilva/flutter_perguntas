import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!\n\n${pontuacao}\n';
    } else if (pontuacao < 12) {
      return 'Você é bom!\n\n${pontuacao}\n';
    } else if (pontuacao < 16) {
      return 'Impressionante!\n\n${pontuacao}\n';
    } else {
      return 'Nivel Jedi!\n\n${pontuacao}\n';
    }
  } //fraseResultado

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          fraseResultado,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            color: Colors.blue[900],
          ),
        )),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
