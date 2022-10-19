import 'package:flutter/material.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        ListTile(
          title: Text('this is our title'),
          trailing: Checkbox(value: false, onChanged: (onChanged) {}),
        ),
      ],
    );
  }
}