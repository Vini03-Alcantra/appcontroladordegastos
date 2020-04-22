
import 'package:flutter/material.dart';

class UpcomingCard extends StatelessWidget {
  final String title;
  final double valor;
  final Color color;

  UpcomingCard({this.title, this.valor, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 160,
        width: 120.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(25.0))
        ),
         child: Padding(
           padding: const EdgeInsets.all(10),
            child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[  
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("$title", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("R\S$valor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}