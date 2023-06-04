import 'package:flutter/material.dart';
import 'package:todoroo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoroo/model/task_data.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
            onLongPressCallBack: (){
              taskData.deleteTask(task);
            },
              isChecked:task.isDone,
              taskTitle: task.name,
              checkBoxCallBack: (bool? checkBoxState){
                taskData.updateTask(taskData.tasks[index]);

              }
          );

        }, itemCount: taskData.taskCount,);
      },

    );
  }
}