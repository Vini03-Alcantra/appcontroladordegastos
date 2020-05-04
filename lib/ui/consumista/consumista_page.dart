import 'package:flutter/material.dart';

class ConsumistaPage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height/4;
    return Material(
      child: Column(
        children: <Widget>[
          Container(
            height: altura,
            width: double.infinity,
            color: Colors.redAccent,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("Consumistas sêniors", style: TextStyle(fontSize: 14, fontFamily: 'AmaticSC Bold'))
                  ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.deepPurple,
            height: altura,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                    child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("Consumistas pleno", style: TextStyle(fontSize: 14, fontFamily: 'AmaticSC Regular'))
                  ),
                )
              ],
            ),
            
          ),
          Container(
            width: double.infinity,
            color: Colors.deepOrange,
            height: altura,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                    child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("Consumistas júnior", style: TextStyle(fontSize: 14, fontFamily: 'Pacifico Regular'))
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.greenAccent,
            height: altura,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text("Dados", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Shadows Into Light')
                  )),
                )],
            ),
          ),
        ],
      ),
    );
  }
}