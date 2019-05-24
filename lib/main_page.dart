import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  static String tag = 'mainProfilePage';

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      // ----- app bar + profile logo top 
      appBar : AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.all(8),
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    // ------------------- NEEDS TO BE MODIFY SO THAT IT TAKES LOGIN PERSON IMAGE
                    image: AssetImage('assets/army_logo.jpg'), ),
                ),  ),
            ),  ),
        ),
      backgroundColor: Theme.of(context).primaryColorDark,
      title: Text('Home'),  ),

      //body: TwitterBody(),

      // ----- side drawer for profile 
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(16, 40, 0, 8),
                child: InkWell(
                  onTap: (){
                    //Navigator.of(context).pushNamed(ProfilePage.tag);
                  },
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      // ------------------- NEEDS TO BE MODIFY SO THAT IT TAKES LOGIN PERSON IMAGE
                      image: AssetImage('assets/army_logo.jpg'),),
                  ),),
                ),),

              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // ------------------- NEEDS TO BE MODIFY SO THAT IT TAKES LOGIN PERSON TEXT
                    Text('Army123', 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),),

              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text('@_ARMY_123', // ------------------- NEEDS TO BE MODIFY SO THAT IT TAKES LOGIN PERSON IMAGE
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),),),

              Container(
                width: double.infinity,
                color: Colors.grey,
                height: 0.5,
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text('Profile', style: TextStyle(color: Colors.white), ),
                      leading: Icon(Icons.person, color: Colors.grey),),

                    ListTile(
                      title: Text('List', style: TextStyle(color: Colors.white), ),
                      leading: Icon(Icons.list, color: Colors.grey),),

                    ListTile(
                      title: Text('Bookmarks', style: TextStyle(color: Colors.white), ),
                      leading: Icon(Icons.bookmark_border, color: Colors.grey),),

                  ListTile(
                      title: Text('Momments', style: TextStyle(color: Colors.white), ),
                      leading: Icon(Icons.apps, color: Colors.grey),),

                  Container(width: double.infinity, height: 0.5, color: Colors.grey),

                  ListTile(
                      title: Text('Settings and Privacy', style: TextStyle(color: Colors.white), ), ),

                  ListTile(
                      title: Text('Help center', style: TextStyle(color: Colors.white), ),),

                  Container(width: double.infinity, height: 0.5, color: Colors.grey),
                  ],),),
              )
            ],),
        ),
      ),

    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.edit),
      backgroundColor: Theme.of(context).accentColor,),

    bottomNavigationBar : Container(height: 50, color: Theme.of(context).primaryColorDark,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton( icon: Icon(Icons.home), 
              onPressed: (){
                Navigator.of(context).pushNamed(MainPage.tag);
              },
            ),
            IconButton( icon: Icon(Icons.search), 
              onPressed: (){
                //-----------------------------------------------------------------add function
              },
            ),
            IconButton( icon: Icon(Icons.notifications), 
              onPressed: (){
                //-----------------------------------------------------------------add function
              },
            ),
            IconButton( icon: Icon(Icons.mail), 
              onPressed: (){
                //-----------------------------------------------------------------add function
              },
            ),
            ],
        ),),


    );
  } // Widget
} // MainPage