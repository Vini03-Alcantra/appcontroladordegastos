
import 'package:flutter/material.dart';
import 'package:moneymanagement/ui/cartoes.dart';
import 'package:moneymanagement/ui/components/cabecalho.dart';
import 'package:moneymanagement/ui/components/drawer.dart';
import 'package:moneymanagement/ui/components/icon_menu_page.dart';
import 'package:moneymanagement/ui/components/upcoming_card.dart';
import 'package:moneymanagement/ui/consumista/consumista_page.dart';
import 'package:moneymanagement/ui/dashboard.dart';

class Home extends StatefulWidget {
  
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color primaryColor = Color.fromRGBO(255, 82, 48, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(              
              children: <Widget>[                
                ClipPath(
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(color: primaryColor),
                  ),
                ),
                CabecalhoMenuHomePage(),
                //FIm de informações abaixo do cabeçlho
                
                //Início de container com menu
                Padding(
                  padding: EdgeInsets.only(top: 120.0, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0.0, 3.0),
                          blurRadius: 15.0
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        //Início da primeira linha de menus
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0), 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconMenuPage(Icons.credit_card, "cartão", Cartoes()),
                              IconMenuPage(Icons.person_outline, "consumista", ConsumistaPage()),
                              IconMenuPage(Icons.shopping_cart, "Compras", null),
                            ],
                          ),
                        ),
                        //Fim da primeira linha

                        //Início da segunda linha de menu
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0), 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconMenuPage(Icons.monetization_on, "Ganhos", null),
                              IconMenuPage(Icons.send, "Enviar", null),
                              IconMenuPage(Icons.favorite, "Favoritos", null),
                            ],
                          ),                          
                        ),
                        // Fim da Segunda linha de menus                        
                      ],
                    ),
                  ),
                ),                  
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
              child: Text("Últimos gastos", style: TextStyle(color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.bold, fontSize: 20.0)
            )),
            Padding(
              padding: EdgeInsets.only(left: 35.9, bottom: 25),
              child: Container(height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    UpcomingCard(title: "Cred card", valor: 5506.69, color: Colors.purple ,),
                    UpcomingCard(title: "Debito card", valor: 20, color: Colors.orange[500] ,),
                    UpcomingCard(title: "Cred card", valor: 10, color: Colors.purple ,),
                    UpcomingCard(title: "Cred card", valor: 33, color: Colors.purple ,)
                  ],
                ),
              ),  
            )
            
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Vinícius"),
              accountEmail: Text("vinicius@vinicius.com.br"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                //backgroundImage: NetworkImage("https://unsplash.com/photos/sHSoDpR6zc8"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Meus dados"),
              subtitle: Text("Nome, idade, cpf"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                debugPrint("Drawer");
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("meus favoritos"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Sair"),
              subtitle: Text("Deseja sair dessa conta ?"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
  
  }





