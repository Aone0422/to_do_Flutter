import 'package:to_do/redux/reducer/todo_list_reducer.dart';
import 'package:to_do/redux/state/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    todoList: todoListReducer(state.todoList, action),
  );
}
