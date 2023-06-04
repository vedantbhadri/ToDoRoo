import 'package:flutter/material.dart';




class TaskTile extends StatelessWidget {

  bool isChecked = false;
  final String taskTitle;
  final Function checkBoxCallBack;
  final GestureLongPressCallback? onLongPressCallBack;
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkBoxCallBack, required this.onLongPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack ,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue){
          checkBoxCallBack(newValue);
        },
        value: isChecked,
      ),
    );
  }
}



