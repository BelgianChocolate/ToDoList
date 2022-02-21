//Plan:-
//Before we creat the UI for our app,
//its important to consider what data structure is going to be used to store
//the task in the TO -D0 list. Dart is an object-oriented programming language....hence
//it akes sense to create a class to hold the required info about the task.

// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_this
// ignore_for_file: use_key_in_widget_constructors

class Task {
  //Class properties
  //Underscore makes the variables private

  String _name;
  //bool _completed;

  //Default contrsuctor
  //The folowing syntax means it accepts a value and sets it to this.name
  Task(
    this._name,
  );

  //For functions that contain just one expression, we can use a shorthand syntax
  //The => expression suntax is a shorthand for {return expression;}
  //Basically the function executes the expression to its right and returns its value

  //Getter and Setter functions for name
  getName() => this._name;
  setName(name) => this._name = name;

  //Getter and Setter Functions for completed
  //isCompleted() => this._completed;
  //setCompleted(completed) => this._completed = completed;

  //Here, we are defining a class Task that is going to be used to store our TODO tasks.
  //Every task has a name and can either be completed or not.
  //These properties are defined using lines 13 and 14

}
