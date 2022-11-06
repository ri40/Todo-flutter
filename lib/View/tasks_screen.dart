import 'package:flutter/material.dart';
import 'package:todo/Controller/task_data.dart';
import 'package:todo/View/add_task_screen.dart';
import 'package:get/get.dart';

class TasksScreen extends StatelessWidget {
  @override
  var todoCController = Get.put(TaskData());

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen((newTaskTitle) {}))),
          );
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 167, 154, 179),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'TO DO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Obx(() {
              return Text(
                '${todoCController.tasks.length} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              );
            }),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Obx(
                  () {
                    return ListView.builder(
                        itemCount: todoCController.tasks.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: EdgeInsets.all(10),
                            child: ListTile(
                              title: Text('${todoCController.tasks[index]}'),
                              leading: Checkbox(
                                value: todoCController.isChecked[index],
                                onChanged: (value) {
                                  todoCController.isChecked[index] = value!;
                                  todoCController.tasks[index] =
                                      todoCController.tasks[index];
                                },
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  todoCController.deletitem(index);
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
