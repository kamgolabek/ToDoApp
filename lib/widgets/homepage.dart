import 'package:flutter/material.dart';
import '../models/todo_item.dart';
import './todo_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {


  final List<TodoItem> items = [
  TodoItem(id: 1, title: 'Write simple ToDo App', category: 'Career', dueDate: DateTime.now()),
  TodoItem(id: 2, title: 'Choose parents invitation', category: 'Wesele', dueDate: DateTime.now()),
  TodoItem(id: 3, title: 'Read book', category: 'Free time', dueDate: DateTime.now()),
  TodoItem(id: 4, title: '4', category: 'Career', dueDate: DateTime.now()),
  TodoItem(id: 5, title: '5', category: 'Wesele', dueDate: DateTime.now()),
  TodoItem(id: 6, title: '6', category: 'Free time', dueDate: DateTime.now()),
  TodoItem(id: 7, title: '7', category: 'Career', dueDate: DateTime.now()),
  TodoItem(id: 8, title: '8', category: 'Wesele', dueDate: DateTime.now()),
  TodoItem(id: 9, title: '9', category: 'Free time', dueDate: DateTime.now()),
];

void completeTask(int id, bool isDone){
  var item = items.firstWhere((element) => element.id == id);
  
  setState(() {
     item.done = isDone;
  });
 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
      ),
      body: SingleChildScrollView(
        child: ToDoList(items, completeTask),
      ),
    );
  }
}
