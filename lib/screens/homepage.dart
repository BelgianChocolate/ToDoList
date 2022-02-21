// ignore_for_file: unused_import, prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/screens/tasks.dart';
//Above import allows us to use class Task defined separately in another file!


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your To-Do List"), backgroundColor: Color.fromARGB(225, 255, 0, 221)),
      
    );
  }
}
//Understand that In the TO-DO list you need to add authentication as well
//This is because you will see only your to do tasks and not of others
