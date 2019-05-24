import 'package:flutter/material.dart';
import 'package:iw_test4/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget{
  static String tag = 'login-page';

  @override 
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final formKey = new GlobalKey<FormState>();

  String _email, _password;

  // void validateSubmit() async {
  //   if (validationState() == true){ 
  //     try{
  //       FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
  //       print('Sined in: ${user.uid}');
  //     }
  //     catch (e){
  //       print('Error: $e');
  //     }
  //   }

  // }

  // bool validationState(){
  //   final form = formKey.currentState;
  //   form.save();
  //   if (form.validate()){
  //     //Navigator.of(context).pushNamed(HomePage.tag);
  //     return true;
  //   }
  //   return false;
  // }

  Future<void> signIn() async {
    final form = formKey.currentState;
  
    if (form.validate()){
      form.save();
      try{
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.of(context).pushNamed(HomePage.tag);
      print('User id : ${user.uid}');
    }catch(e){
      print(e.message);
    }
    }
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: new Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24, right: 24),
            children: <Widget>[
              // -----cirlce logo
              Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 120.0,
                // ------------------------------------------ CHANGE IMAGE LOGO LATER
                child: Image.asset('assets/bts_logo.jpg', fit: BoxFit.cover,),
              ),
            ),

            SizedBox(height: 48),
            
            // -----email textfield
            TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
              validator: (value) => value.isEmpty ? "Email can't be empty" : null,
              onSaved: (value) => _email = value, ),

            SizedBox(height: 8),
            
             // ----- password textfield
            TextFormField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
              validator: (value) => value.isEmpty ? "Password can't be empty" : null,
              onSaved: (value) => _password = value,    ),

            SizedBox(height: 24),

            // -----login button
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                shadowColor: Colors.pinkAccent.shade100,
                elevation: 5.0,
                child: MaterialButton( 
                  minWidth: 200,
                  height: 42,
                  onPressed: (){  
                    signIn();
                    //validateSubmit();   
                  },
                  color: Colors.pinkAccent,
                  child: Text('Login', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],),  ),),
      );

    //----------------------------------------------------------------------need or not?
    //FlatButton(
    //   child: Text('Forget Password', style: TextStyle(color: Colors.blue),),
    //   onPressed: (){
    //        //----------------------------------------------adding fuction later
    //      },
    // );
  }
}