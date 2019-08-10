import 'package:flutter/material.dart';
import 'package:iw_test4/main_page.dart';

class FilterPage extends StatelessWidget{
  static String tag = 'static-page';

  @override 
   Widget build(BuildContext context){
    final filterContent = Container(
      child: Column(
        children: <Widget>[
          Text('Pick Up Point : '),
          Text('Destination : ')
        ],
      ),
    );

    return Scaffold(
      //appBar: MainPage(),
      body: filterContent,
      //bottomNavigationBar: MainPage(bottomNav),
    );
   }
}