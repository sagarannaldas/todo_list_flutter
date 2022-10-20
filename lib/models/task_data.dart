import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy alooo'),
    Task(name: 'Buy pakoda'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}