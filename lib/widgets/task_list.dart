import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'go gem',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;

  TaskCheckbox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orangeAccent,
      value: checkboxState,
      onChanged: (newValue) {
        // setState((){
        //   isChecked = newValue;
        // });
      },
    );
  }
}
