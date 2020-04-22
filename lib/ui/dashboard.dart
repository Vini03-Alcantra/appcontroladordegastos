import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var data = [
      ClickPerMoth('Jan', 30, Colors.purple),
      ClickPerMoth('Fev', 42, Colors.blue),
      ClickPerMoth('Mar', 54, Colors.purple),
      ClickPerMoth('Abr', 20, Colors.blue),
      ClickPerMoth('Mai', 76, Colors.purple),
      ClickPerMoth('Jun', 35, Colors.blue),
    ];

    var series = [
      new charts.Series(
        id: "Clicks",        
        domainFn: (ClickPerMoth clickData, _) => clickData.month,
        measureFn: (ClickPerMoth clickData, _) => clickData.click,
        colorFn: (ClickPerMoth clickData, _) => clickData.color,
        data: data
      )
    ];

    var chart = new charts.BarChart(series, animate: true, animationDuration: Duration(milliseconds: 1500),);

    var chartWidget = Padding(padding: EdgeInsets.all(32.0), child: SizedBox(height: 170.0, child: chart,),);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back),
                    onPressed: (){Navigator.of(context).pop(context);
                    }),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.black54,
                      iconSize: 30.0,
                      onPressed: (){},
                    )
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Text("Dashboard", style: TextStyle(color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.bold, fontSize: 32.0))
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: double.infinity,
              height: 370.0,
              decoration: BoxDecoration(
                color: Colors.orange[600],
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 0.3),
                    blurRadius: 15.0
                  )
                ]
              ),
              child: Column(
                children: <Widget>[ 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[ 
                        Column(  
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[  
                            Text("2000,00", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15),
                            Text("Available Balance", style: TextStyle(color: Colors.white, fontSize: 14),)
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.show_chart), 
                          onPressed: (){},
                          color: Colors.white,
                          iconSize: 30.0,
                        )
                      ],
                    ),
                  ),
                  chartWidget
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Text("Recent Activy", style: TextStyle(color: Colors.black.withOpacity(0.7),
            fontSize: 20.0, fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.purple.withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Jo", style: TextStyle(color: Colors.purple,
                            fontSize:24, fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Load Activity", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                            Text("Send money", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ],
                        ) 
                      ),
                      Text(
                        "-240", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  
                  Padding(padding: EdgeInsets.symmetric(horizontal: 25),child: Divider(),),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.purple.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("MA", style: TextStyle(color: Colors.purple,
                              fontSize:24, fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Load Activity", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                              Text("Request money", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                            ],
                          ) 
                        ),
                        Text(
                          "Request Money", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  } 
}

class ClickPerMoth {
  final String month;
  final int click;
  final charts.Color color;

  ClickPerMoth(this.month, this.click, Color color) : this.color = new charts.Color(r:color.red, g:color.green, b:color.blue, a: color.alpha);
  
 }