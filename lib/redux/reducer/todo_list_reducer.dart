import 'package:to_do/models/todo.dart';
import 'package:to_do/redux/action/actions.dart';
import 'package:redux/redux.dart';

// Reducerは新たなStateを発行して送る
final todoListReducer = combineReducers<List<Todo>>([
  TypedReducer<List<Todo>, AddTodoAction>(_addTodo),
  TypedReducer<List<Todo>, InvertTodoAction>(_invertTodo),
]);

List<Todo> _addTodo(List<Todo> todoList, AddTodoAction action) {
  return List.from(todoList)..add(action.todo);
}

List<Todo> _invertTodo(List<Todo> todoList, InvertTodoAction action) {
  return todoList.map((todo) {
    if (todo.id == action.todoId) {
      todo.active = !todo.active;
    }
    return todo;
  }).toList();
}
