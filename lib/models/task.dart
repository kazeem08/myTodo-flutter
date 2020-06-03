class Task {
  final String name;
  bool isDone;
  static List<Task> tasks = [];

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
//    isDone = (isDone) ? false : true;
  }
}
