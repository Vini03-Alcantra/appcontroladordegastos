import 'package:flutter/material.dart';
import 'package:moneymanagement/ui/dashboard.dart';

class CabecalhoMenuHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0,) ,
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("2000", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Available Balance", style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
          Material(
            elevation: 1.0,
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.purple,
            child: MaterialButton(                          
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Dashboard()
                ));
              }, 
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Text("Top Up", style: TextStyle(fontSize: 16, color: Colors.white),),
            ),
          )
        ],
      ),
);
  }
}