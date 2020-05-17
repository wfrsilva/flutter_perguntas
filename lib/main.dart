import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
  }//_responder

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto':'Qual é a sua cor favorita?',
        'respostas':['Preto','Vermelho','Verde','Branco']
      },
      {
      'texto':'Qual é seu animal favorito?',
      'respostas':['Coelho','Cobra','Elefante','Leão']
      },
      {
      'texto':'Qual é seu instrutor favorito?',
      'respostas':['Maria','João','Leo','Pedro']
      },
    ];
    List <Widget> respostas = [];

    for(String textoResp in perguntas[_perguntaSelecionada]['respostas']){
      respostas.add(Resposta(textoResp, _responder));
    }//for

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas,
          ],
        ),
      )
    );
  }//build

}//PerguntaAppState

class PerguntaApp extends StatefulWidget {
  
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }// createState

}//PerguntaApp

