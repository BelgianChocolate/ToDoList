// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables
// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/screens/authscreen.dart';
import 'package:todolist/screens/homepage.dart';
import 'package:todolist/screens/tasks.dart';

void main() => runApp(TODOApp());
//We have defined the main function which acts as the entry point for the application
//Flutter will start by executing this function...It asks Flutter to  run the app with
//ToDoApp widget as the root widget

//Now we define the ToDoApp widget
//But why a stateless widget???
//BECAUSE---runApp will only take a StatelessWidget as its argument!!!!
class TODOApp extends StatelessWidget {
//We are over riding the build method....This has to be done for every custom widget we define
  @override
  Widget build(BuildContext context) {
    //return MaterialApp();
    //The Material App is a built in widget to help us with the App Layout
    return TODO();
  }
}

//We create A stateful widget called TODO and the state for it, called the TODOState.
//Every Stateful widget has a state associated with it.
//The state of a widget holds all the information needed by the widget and handles
//building line.
//A stateful widget has to connect a state to itself, as in line 38
class TODO extends StatefulWidget {
  @override
  //_TODOState createState() => _TODOState();
  //The above statement was a shorthand notation for
  State<StatefulWidget> createState() {
    return TODOState();
  }
}

//Now this is the state for the TODO widget...
class TODOState extends State<TODO> {
  //We define the properties for the widget in its State
  final List<Task> tasks = [];
  void onTaskCreation(String name)
  //This function will basically take a new name and insert a new task to the list
  {
    // All state modifications have to be wrapped in setState so that flutter knows there is some change
    setState(() {
      tasks.add(Task(name));
    });
  }

  //Now state becomes responsible for building the app widget
  //Hence it will return material app...
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Your To Do List",
      initialRoute: '/',
      routes: {
        //Screen to View Tasks
        '/': (context) => TODOList(tasks: tasks),
        //Screen to create tasks
        '/create': (context) => TODOCreate(onCreate: onTaskCreation),
      },
    );
  }
}

//Now we are creating a new widget called ToDoList that will render the screen to view tasks
class TODOList extends StatelessWidget {
  final List<Task> tasks;
  TODOList({required this.tasks});
  //Receiving tasks from parent widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //What is the home widget?
      //It is used for the default route of the app....means the widget defined
      //in it is displayed when the application starts normally.
      //The Scaffold is a built in widget to help us with the specific screen's layout

      appBar: AppBar(title: Text("Your To-Do List"), backgroundColor: Colors.pink),
      body: ListView.builder(
        itemCount: tasks.length, //How many items to render?
        itemBuilder: (context, index) //The following function/widget accepts an index and renders a task
            {
          return ListTile(title: Text(tasks[index].getName()));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pushNamed(context, '/create'), child: Icon(Icons.add)),
    );
  }
}

// A new widget to render new task creation screen
//We will implement task creation here
//TODOState will provide a callback that is going to be used by TODOCreate
//to signal a new task creation

//What do we mean by Callback?
//Callback is a function that is passed into another function so it could be executed later

// Since we are handling user input, TODOCreate has to be converted to a stateful component
class TODOCreate extends StatefulWidget {
  // Callback function that gets called when user submits a new task
  final onCreate;
  TODOCreate({@required this.onCreate});
  @override
  State<StatefulWidget> createState() {
    return TODOCreateState();
  }
}

class TODOCreateState extends State<TODOCreate> {
  final TextEditingController controller = TextEditingController();
  //The TextEditingController gives acces to the value in the TextField
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create a task')),
      body: Center(
          child: Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                  //This Opens the keyboard automatically
                  autofocus: true,
                  controller: controller,
                  decoration: InputDecoration(labelText: 'Enter your task')))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        //This button was to save the task.
        onPressed: () {
          // Call the callback with the new task name
          widget.onCreate(controller.text);
          // Go back to list screen
          Navigator.pop(context);
        },
      ),
    );
  }
}
