import 'package:to_do/models/todo_dto.dart';
import 'package:to_do/repositories/todo_entity.dart';

abstract class TodoListRepository {
  Future<List<TodoEntity>> loadTodoList();

  Future saveTodoList(List<TodoEntity> todoList);

  Future<List<TodoDto>> fetch();
}
