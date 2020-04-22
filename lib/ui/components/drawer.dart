import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  int itemSelect = 0;
  
  Widget _listMenu(){
    return ListView(
      children: <Widget>[
        _avatar(),
        _tiles("Início", Icons.home, 0, (){}),
        _tiles("Novidades", Icons.add_location, 1, (){}),
        _tiles("Promoções", Icons.grade, 2, (){}),
        Divider(),
        _tiles("Sair", Icons.arrow_back, 3, (){})
      ],
    );
  }

  Widget _tiles(String text, IconData icon, int item, Function ontap){
    return ListTile(
      leading: Icon(icon),
      onTap: ontap,
      selected: item == itemSelect,
        title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
  
  Widget _avatar(){
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text("VA"),
          ),
          SizedBox(height: 12,),
          Text("Vinícius de Alcantra", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),),
          Text("viniciusalcantarabarros@gmail.com")
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: _listMenu(),
      ),
    );
  }
}