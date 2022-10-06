import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('go gem'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {

  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.orangeAccent,
      value: isChecked,
      onChanged: (newValue){
        setState((){
          isChecked = newValue;
        });
      },
    );
  }
}