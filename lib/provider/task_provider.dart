import 'package:flutter/cupertino.dart';
import 'package:untitled_todo_list/model/task_model.dart';
import 'package:untitled_todo_list/services/task_services.dart';

class TaskProvider extends ChangeNotifier{
  TaskModel? data;

  Future<void> getAllData() async{
    data = await TaskService.getData();
    notifyListeners();
  }
  Future<void> addTask(String newTask) async{
    await TaskService.addItem(newTask: newTask);

    data?.todos.add({"todo":newTask});
    data?.total +=1;

    notifyListeners();
  }
}