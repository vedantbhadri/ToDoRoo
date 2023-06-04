import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoroo/model/task_data.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
