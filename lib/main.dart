import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneymanagement/constants/routes.dart';
import 'package:moneymanagement/undefined_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      onGenerateRoute: generateRoute,
      initialRoute: LoginPageRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => UndefinedView(name: settings.name)),
    );
  }
}
