import 'dart:convert';

import 'package:to_do/models/todo_dto.dart';
import 'package:http/http.dart' as http;

class TodoListHttpClient {
  static const _BASE_URL = 'https://todo-golang-api.herokuapp.com';

  Future<List<TodoDto>> fetch() async {
    final response = await http.get('$_BASE_URL/TodoService/GetTodos');
    final responseJson = json.decode(response.body) as List<dynamic>;

    return responseJson
        .map((dynamic item) => TodoDto.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
