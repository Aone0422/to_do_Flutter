import 'package:to_do/models/todo.dart';
import 'package:to_do/redux/state/app_state.dart';

List<Todo> todoListSelector(AppState state) => state.todoList;