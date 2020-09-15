import 'package:flutter/material.dart';
import 'package:Todoey/screens/TaskScreen.dart';
import 'package:Todoey/constants/constants.dart';

TaskScreen taskScreen = new TaskScreen();

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(@required this.addTask);
  final Function addTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                task = value;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              onPressed: () {
                addTask();
                Navigator.pop(context);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
