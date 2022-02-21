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
class ToDoApp extends StatelessWidget {
//Creating a list of tasks with some dummy values
  //Dummy values?
  //Because right now we have not built any interface that takes input from user to add tasks
  final List<Task> tasks = [Task("Wake Up 7:30 am"), Task("Watch MAN 001 Lecture"), Task("Finish making the ToDo List")];
//We are over riding the build method....This has to be done for every custom widget we define

  @override
  Widget build(BuildContext context) {
    //The Material App is a built in widget to help us with the App Layout
    return MaterialApp(
        //What is the home widget?
        //It is used for the default route of the app....means the widget defined
        //in it is displayed when the application starts normally.
        //The Scaffold is a built in widget to help us with the specific screen's layout

        home: Scaffold(
            appBar: AppBar(title: Text("Your To-Do List")),
            body: ListView.builder(
              //How many items to render?
              itemCount: tasks.length,
              //The following fFunctions accepts an index and renders a task
              itemBuilder: (context, index) {
                return ListTile(title: Text(tasks[index].getName()));
              },
            )),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, primaryColor: Color.fromARGB(255, 0, 255, 42)));
  }
}
