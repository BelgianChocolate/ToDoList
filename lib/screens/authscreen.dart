// ignore_for_file: unused_import, prefer_const_constructors

//NOTE:-
//The authscreen containing the authform is shown to the user
//only when he is not signed up already
//otherwise he is redirected to the home page

import 'package:flutter/material.dart';
import 'package:todolist/screens/authform.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
        backgroundColor: Colors.pink),
      body: AuthForm(),
      //body of the scaffold widget will be the authform widget jiska
      //code we will write separately
      
    );
  }
}