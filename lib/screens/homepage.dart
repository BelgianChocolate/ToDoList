// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your To-Do List"), backgroundColor: Colors.orange),
    );
  }
}
//Understand that In the TO-DO list you need to add authentication as well
//This is because you will see only your to do tasks and not of others
