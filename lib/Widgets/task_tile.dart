import 'package:Todoey/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:Todoey/screens/TaskScreen.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.isChecked,
    this.checkBoxCallBack,
    this.tasktitle,
    // this.removetodo,
    this.index,
  });

  final int index;
  final String tasktitle;
  final bool isChecked;
  final Function checkBoxCallBack;
  // final Function removetodo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onLongPress: () {
      //   final snackBar = SnackBar(
      //     content: Text('Do you want to delete this todo?'),
      //     action: SnackBarAction(
      //       label: 'Yes',
      //       onPressed: () {
      //         removeIndex = index;
      //         removetodo;
      //       },
      //     ),
      //   );

      //   // Find the Scaffold in the widget tree and use
      //   // it to show a SnackBar.
      //   Scaffold.of(context).showSnackBar(snackBar);
      // },
      child: ListTile(
        title: Text(
          tasktitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue) {
            checkBoxCallBack(newValue);
          },
        ),
      ),
    );
  }
}
