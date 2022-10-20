import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/widgets/task_tile.dart';
import 'package:todo_list_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, int index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(taskData.tasks[index]);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
