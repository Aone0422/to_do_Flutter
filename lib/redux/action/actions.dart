import 'package:to_do/models/todo.dart';

class AddTodoAction {
  AddTodoAction(
      this.todo,
      );

  final Todo todo;
}

class InvertTodoAction {
  InvertTodoAction(
      this.todoId,
      );

  final String todoId;
}