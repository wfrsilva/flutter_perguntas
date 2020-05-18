import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Resultado extends StatelessWidget {
  
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado{
    if(pontuacao <8){
      return 'Parabéns!\n\n${pontuacao}';
    }else if(pontuacao < 12){
      return 'Você é bom!\n\n${pontuacao}';
    }else if(pontuacao < 16){
      return 'Impressionante!\n\n${pontuacao}';
    }else{
      return 'Nivel Jedi!\n\n${pontuacao}';
    }
  }//fraseResultado

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      fraseResultado, 
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28, 
        color: Colors.blue[900],
        
        ),
      
      )
      );
  }
}
