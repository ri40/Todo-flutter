import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.orangeAccent,
        value: isChecked,
        onChanged: checkboxChange,
      ),
    );
  }
}
