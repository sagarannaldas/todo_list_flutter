import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is our title'),
      trailing: Checkbox(value: false, onChanged: (onChanged) {}),
    );
  }
}