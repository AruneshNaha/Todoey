import 'package:Todoey/Widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:Todoey/constants/constants.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // void removeTodo() {
  //   setState(() {
  //     tasks.removeAt(removeIndex);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            // removetodo: removeTodo,
            index: index,
            tasktitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallBack: (currentCheckBoxState) {
              setState(() {
                tasks[index].isDone = currentCheckBoxState;
              });
            });
      },
    );
  }
}
