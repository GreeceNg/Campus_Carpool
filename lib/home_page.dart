import 'package:flutter/material.dart';
import 'package:iw_test4/main_page.dart';

/**THIS PAGE CAN BE IGNORE IF WANTED */

class HomePage extends StatelessWidget{
  static String tag = 'home-page';

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pinkAccent, Colors.purple]),
        ),
        child: Column(
          children: <Widget>[

            // ----- profile image
            Hero(
              tag: 'hero',
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircleAvatar(
                  radius: 72,
                  backgroundColor: Colors.transparent,
                  // ------------------- NEEDS TO BE MODIFY SO THAT IT TAKES LOGIN PERSON IMAGE
                  backgroundImage: AssetImage('assets/army_logo.jpg'),
                ), ),  ),

            // ----- Big text title
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Welcome Army', style: TextStyle(fontSize: 28, color: Colors.white),),
            ),

            // ----- small text paragraph
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Welcome to BTS WORLD', style: TextStyle(fontSize: 16, color: Colors.white),),
            ),

            // ----- let's go button
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
                child: MaterialButton( 
                  minWidth: 200,
                  height: 45,
                  onPressed: (){
                    Navigator.of(context).pushNamed(MainPage.tag);
                  },
                  color: Colors.purpleAccent,
                  child: Text("Let's Go", style: TextStyle(color: Colors.white),),
                ),  ), 

          ], ),),
    ); 
  
  }
} //HomePage