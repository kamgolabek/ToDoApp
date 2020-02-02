class TodoItem {
  int id;
  String title;
  String category;
  DateTime dueDate;
  bool done;

  TodoItem({this.id, this.title, this.category, this.dueDate, this.done = false});
}