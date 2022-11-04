import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Controller/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  var todoCController = Get.put(TaskData());

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              todoCController.additem(newTaskTitle.toString());
              Get.back();
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
