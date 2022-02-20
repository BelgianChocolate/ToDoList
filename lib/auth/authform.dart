// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers

//PLAN:-
//Login: Text spaces for email/username and password
//Signup: Text spaces for email, username and password
//A button which signs up the user or logs him in

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  //The keyword final---- a variable with final keyword will be intiailised at runtime
  //and can only be assigned for a single time.
  //When the state is updated, everything in the build method will be initialised again....including
  //all variables with final keyword

  //what are keys?
  //Keys are the ones to preserve State when widgets move around the widget tree

  //What is ListView?
  //Listview is a scrollable list of widgets arranged linearly.
  //It displays its children one after another in the scroll direction i.e. vertical/horizontal
  final formkey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 10, right: 10, top: 13),

        //container ka child hota hai grid view and list view etc...
        child: ListView(children: [
          Container(
              child: Form(
                  key: formkey,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value!.contains('@')) {
                          return ("The email you have entered is incorrect. Please retry");
                        } else {
                          return null;
                        }
                      },//directly isEmpty cannot be called by value
                      onSaved: (value) {
                        email == value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: "Enter your email id",
                          labelStyle: GoogleFonts.roboto()),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ("Please enter the password.");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        email == value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          labelText: "Enter password",
                          labelStyle: GoogleFonts.roboto()),
                    )
                  ])))
        ]));
  }
}
