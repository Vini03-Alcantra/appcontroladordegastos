import 'package:flutter/material.dart';

class Cartoes extends StatefulWidget {
  @override
  _CartoesState createState() => _CartoesState();
}

class _CartoesState extends State<Cartoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartão"),
        centerTitle: true,
        brightness: Brightness.light,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/2.27,
            width: double.maxFinite,
            decoration: BoxDecoration(
              
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 100, 120, 100) ,
                  child: Text("Porcentagem do cartão utilizado"),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Limite usado"),
                        Text("2000")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Limite aceito"),
                        Text("2304")
                      ],
                    ),
                    Divider()
                  ],
                ), 
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/2.27,
            width: double.maxFinite,
            decoration: BoxDecoration(),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(onPressed: (){}, color: Colors.purple, child: Text("Cadastrar Novo Cartão")),
                ),
                SizedBox(height: 12),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                  child: RaisedButton(onPressed: (){},color: Colors.purple, child: Text("Atualizar Cartão")),
                ),
                SizedBox(height: 12),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(onPressed: (){},color: Colors.purple, child: Text("Verificar lista de cartões")),
                ),
                SizedBox(height: 12),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(onPressed: (){}, color: Colors.purple, child: Text("Excluir Cartão")),
                ),


                
                
                
                
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}