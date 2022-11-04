import 'package:flutter/material.dart';
import 'package:todo/Model/task.dart';
import 'package:get/get.dart';

class TaskData extends ChangeNotifier {
  var tasks = [
    'Math Homework',
    'English Exam',
  ].obs;

  void additem(String titel) {
    tasks.add(titel);
  }

  void deletitem(index) {
    tasks.removeAt(index);
  }
}
