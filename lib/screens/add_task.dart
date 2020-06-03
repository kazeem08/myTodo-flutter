import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/tasks_list.dart';
import '../models/task.dart';
import '../utility/task_handler.dart';

class AddTaskScreen extends StatelessWidget {
//  final Function addTaskCallback;

//  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  newTask = value;
                },
              ),
              SizedBox(height: 15.0),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
//                  addTaskCallback(newTask);
                  Provider.of<TaskHandler>(context, listen: false)
                      .addTask(newTask);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
