import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import '../utility/task_handler.dart';

class TasksList extends StatelessWidget {
  final List<dynamic> tasks;
  TasksList({this.tasks});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskHandler>(
      builder: (context, taskData, child) {
        dynamic taskHolder = taskData.tasks;
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskHolder[index].name,
              isChecked: taskHolder[index].isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskHolder[index]);
              },
              longPressCallback: () {
                taskData.deleteTask(taskHolder[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
