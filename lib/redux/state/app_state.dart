import 'package:flutter/foundation.dart';
import 'package:to_do/models/todo.dart';

@immutable
class AppState {
  const AppState({
    this.todoList,
  });

  final List<Todo> todoList;
}
