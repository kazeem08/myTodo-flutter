import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/task_manager.dart';
import './utility/task_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskHandler(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
