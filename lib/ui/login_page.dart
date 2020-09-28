import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneymanagement/ui/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKeyLogin = GlobalKey<ScaffoldState>();
  
  @override
  void dispose(){
    _controllerUsuario.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: Scaffold(
        key: _scaffoldKeyLogin,
        body:  SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    height: MediaQuery.of(context).size.height/2,
                    child: Image.asset("imagens/cidade.jpg"),            
                  ),
                  Positioned(
                    top: 100,
                    left: 32,
                    child: Text("Sign in", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black))
                  ),

  
                    
                  Positioned(
                      top: 180,
                      child: Container(
                        padding: EdgeInsets.all(32),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(62),
                            topRight: Radius.circular(62)
                          )
                        ),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: _controllerUsuario,
                              decoration: InputDecoration(
                                hintText: "Username",
                                prefixIcon: Icon(Icons.person_pin)
                              ),
                              validator: (value){
                                if (value.isEmpty) {
                                  return "Por favor preencher login";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16, bottom: 60),
                              child: TextFormField(
                                obscureText: true,
                                controller: _controllerPassword,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.vpn_key),
                                ),
                                validator: (value){
                                  if(value.isEmpty){
                                    return "Por favor preencher campo de senha";
                                  }else{
                                    return null;
                                  }
                                },
                              ),
                            ),

                            Container(
                              height: 45,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.all(Radius.circular(32)),                        
                              ),
                              child: RaisedButton(
                                color: Colors.orange[500],
                                child: Text("Login", style: TextStyle(color: Colors.white)),
                                onPressed: (){
                                  if(_formKey.currentState.validate()){
                                    
                                  }
                                  
                                },
                              ),
                            ),
                            SizedBox(height: 15),
                            Text("Esqueceu sua senha ?", style: TextStyle(color: Colors.orange[700])),

                            Padding(
                              padding: const EdgeInsets.only(top: 40, bottom: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100)
                                      )
                                    ),
                                    child: Center(child: Icon(Icons.face, color: Colors.orange[500]),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                  ), 
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100)
                                      )
                                    ),
                                    child: Center(
                                      child: Icon(Icons.fingerprint, color: Colors.orange[500]),
                                    ),
                                  )
                                ],
                              ),
                            )                    
                          ],
                        ),
                      ), 
                    )
                ]
              )
            ),
          ) 
        )          
      ),
    );
  }
  // _submitForm(){
  //   final user = _controllerUsuario.text;
  //   final password = _controllerPassword.text;
  //   if (!) {
      
  //   } else {
  //   }
  // }
}

class Validacao {
  bool login(String login){
    if (login == null) {
      return false;
    } else if(login == "vinicius"){
      return true;
    }
  }
  bool senhaUser(String senha){
    if(senha == null){
      return false;
    }
    var senhaValidation = int.tryParse(senha);
    if (senhaValidation != null) {
      return true;
    } else {
    }
  }
}