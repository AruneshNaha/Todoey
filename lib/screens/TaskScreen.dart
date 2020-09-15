import 'package:Todoey/Widgets/add_task_screen.dart';
import 'package:Todoey/Widgets/task_file.dart';
import 'package:Todoey/models/task.dart';
import 'package:flutter/material.dart';
import 'package:Todoey/constants/constants.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  Widget buildBottomSheet;

  void addTask() {
    setState(() {
      tasks.add(Task(name: task));
      task = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${tasks.length} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: tasks.isEmpty
                  ? Center(
                      child: Text(
                        "No tasks",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Color(0xFF757575),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    )
                  : TaskList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => AddTaskScreen(addTask));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
