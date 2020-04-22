import 'package:flutter/material.dart';

class IconMenuPage extends StatelessWidget {
  IconData icone;
  String text;
  Widget page;
  Function onclick;
  IconMenuPage(this.icone, this.text, this.page);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.purple.withOpacity(0.1),
          child: IconButton(
            padding: EdgeInsets.all(15.0),
            icon: Icon(icone),
            color: Colors.purple,
            iconSize: 30,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => page));
            }),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text("$text", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
      ],
    );
  }
}