import 'package:to_do/redux/action/actions.dart';
import 'package:to_do/redux/selectors/selectors.dart';
import 'package:to_do/redux/state/app_state.dart';
import 'package:to_do/repositories/todo_list_repository.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreTodoMiddleware(
  TodoListRepository repository,
) {
  final saveTodoList = _createSaveTodoList(repository);

  return [
    TypedMiddleware<AppState, AddTodoAction>(saveTodoList),
    TypedMiddleware<AppState, InvertTodoAction>(saveTodoList),
  ];
}

Middleware<AppState> _createSaveTodoList(TodoListRepository repository) {
  return (store, dynamic action, next) {
    repository.fetch().then((todoListDto) {
      todoListDto.asMap().forEach((index, todo) => {
            print('$index'),
            print(
                'id: ${todo.id}\ntitle: ${todo.title}\nactive: ${todo.active}\ndetail: ${todo.detail}\n'),
          });
    });

    next(action);
    repository.saveTodoList(
      todoListSelector(store.state).map((todo) => todo.toEntity()).toList(),
    );
  };
}
