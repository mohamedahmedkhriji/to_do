class Task {
  final String name;
  bool _isDone;

  Task({required this.name, bool isDone = false}) : _isDone = isDone;

  bool get isDone => _isDone;

  void toggleDone() {
    _isDone = !_isDone;
  }
}
