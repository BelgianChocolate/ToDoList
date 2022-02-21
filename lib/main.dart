// ignore_for_file: unused_import, prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/screens/authscreen.dart';
import 'package:todolist/screens/homepage.dart';
import 'package:todolist/screens/tasks.dart';

void main() => runApp(ToDoApp());
//We have defined the main function which acts as the entry point for the application
//Flutter will start by executing this function...It asks Flutter to  run the app with
//ToDoApp widget as the root widget

//Now we define the ToDoApp widget
//But why a stateless widget???
//BECAUSE---runApp will only take a StatelessWidget as its argument!!!!
class ToDoApp extends StatelessWidget {
//We are over riding the build method....This has to be done for every custom widget we define

  @override
  Widget build(BuildContext context) {
    //return MaterialApp();
    //The Material App is a built in widget to help us with the App Layout
    return TODO();
  }
}

// ignore: todo
//We create A stateful widget called TODO and satte for it, called the TODOState
//Every Stateful widget has a state associated with it.
//The state of a widget holds all the information needed by the widget and handles
//building line.
//A stateful widget has to connect a state to itself, as in line 40
class TODO extends StatefulWidget {
  @override
  //_TODOState createState() => _TODOState();
  //The above statement was a shorthand notation for
  State<StatefulWidget> createState() {
    return TODOState();
  }
}

// ignore: todo
//Now this is the state for the TODO widget...

class TODOState extends State<TODO> {
  final List<Task> tasks = [
    Task("Wake Up 7:30 am"),
    Task("Watch MAN 001 missed lectures"),
    Task("Learn how to record in OBS Studio"),
    Task("Finish making the TODO List App "),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Your To Do List",

        //What is the home widget?
        //It is used for the default route of the app....means the widget defined
        //in it is displayed when the application starts normally.
        //The Scaffold is a built in widget to help us with the specific screen's layout

        home: Scaffold(
            appBar: AppBar(title: Text("Your To-Do List"), backgroundColor: Colors.pink),
            body: ListView.builder(
              //How many items to render?
              itemCount: tasks.length,
              //The following function/widget accepts an index and renders a task
              itemBuilder: (context, index) {
                return ListTile(title: Text(tasks[index].getName()));
              },
            )),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color.fromARGB(255, 255, 51, 0)));
  }
}
