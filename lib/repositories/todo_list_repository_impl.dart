import 'package:to_do/models/todo_dto.dart';
import 'package:to_do/repositories/http/todo_list_http_client.dart';
import 'package:to_do/repositories/todo_entity.dart';
import 'package:to_do/repositories/todo_list_repository.dart';

class TodoListRepositoryImpl implements TodoListRepository {
  final TodoListHttpClient client = TodoListHttpClient();

  @override
  Future<List<TodoDto>> fetch() {
    return client.fetch();
  }

  @override
  Future<List<TodoEntity>> loadTodoList() {
    print('Debug: TodoListRepositoryImpl loadTodoList is called!');
    return null;
  }

  @override
  Future saveTodoList(List<TodoEntity> todoList) {
    print('Debug: TodoListRepositoryImpl saveTodoList is called!');
  }
}
