import 'package:flutter/material.dart';
import 'package:todo/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                listTilDelete: (){
                  taskData.deleteTask(taskData.tasks[index]);
                },);
          },
        );
      },
    );
  }
}
