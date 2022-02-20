// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/auth/authscreen.dart';
import 'package:todolist/screens/homepage.dart';

void main() => runApp(MyApp());

//runApp function ek widget maangta hai jo class hoti hai
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AuthScreen(),
        //What is the home widget?
        //It is used for the default route of the app....means the widget defined
        //in it is displayed when the application starts normally.
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.orange));
  }
}
