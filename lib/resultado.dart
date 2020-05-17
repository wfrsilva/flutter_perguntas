import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      'Parabéns !!!', 
      style: TextStyle(
        fontSize: 28, 
        color: Colors.blue[900]
        ),
      
      )
      );
  }
}
