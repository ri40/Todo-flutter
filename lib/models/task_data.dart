import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go gem'),
    Task(name: 'go eat'),
    Task(name: 'go sleep'),
  ];
}
