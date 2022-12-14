import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  const TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
        required this.longPressCallback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (newValue) {
            checkboxCallback(newValue);
          },
        ),
      onLongPress: () {
          longPressCallback();
      },
    );
  }
}
