import 'package:flutter/material.dart';
import 'package:moneymanagement/ui/dashboard.dart';
import 'package:moneymanagement/ui/home.dart';
import 'package:moneymanagement/ui/login_page.dart';
import 'package:moneymanagement/undefined_view.dart';

const String LoginPageRoute = "login";
const String HomeRoute = "/";


Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => Home());
    case LoginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView(name: settings.name));
  }
}