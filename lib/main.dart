import 'package:flutter/material.dart';
import 'package:iw_test4/login_page.dart';
import 'package:iw_test4/home_page.dart';
import 'package:iw_test4/main_page.dart';
import 'package:iw_test4/filter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    MainPage.tag: (context) => MainPage(),
    FilterPage.tag: (context) => FilterPage(),
  };

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Test Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue,),
      home: LoginPage(),
      routes: routes,
    );
  }
}