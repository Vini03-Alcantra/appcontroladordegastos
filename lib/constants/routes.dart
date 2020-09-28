import 'package:flutter/material.dart';
import 'package:moneymanagement/ui/dashboard.dart';
import 'package:moneymanagement/ui/login_page.dart';

const String LoginPageRoute = "login";
const String DashboardRoute = "/";


Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case DashboardRoute:
      return MaterialPageRoute(builder: (context) => Dashboard());
    case LoginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    default:
      return MaterialPageRoute(builder: (context) => Dashboard());
  }
}