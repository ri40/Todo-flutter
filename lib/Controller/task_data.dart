import 'package:flutter/material.dart';
import 'package:todo/Model/task.dart';
import 'package:get/get.dart';

class TaskData extends GetxController {
  var tasks = [].obs;
  var isChecked = [].obs;

  // var taskList = [[]];

  void additem(String titel) {
    tasks.add(titel);
    isChecked.add(false);
  }

  void deletitem(index) {
    tasks.removeAt(index);
    isChecked.removeAt(index);
  }
}
