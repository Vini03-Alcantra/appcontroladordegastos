import 'package:flutter/material.dart';

class ConsumistaPage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height/4;
    return Column(
      children: <Widget>[
        Container(
          height: altura,
          width: double.infinity,
          color: Colors.redAccent,
          
        ),
        Container(
          width: double.infinity,
          color: Colors.deepPurple,
          height: altura,
          
        ),
        Container(
          width: double.infinity,
          color: Colors.deepOrange,
          height: altura,
          
        ),
        Container(
          width: double.infinity,
          color: Colors.greenAccent,
          height: altura,
          
        ),
      ],
    );
  }
}