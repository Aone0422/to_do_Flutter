import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:to_do/models/todo.dart';
import 'package:to_do/redux/action/actions.dart';
import 'package:to_do/redux/state/app_state.dart';

/// TODO要素を表示するクラス
class TodoElement extends StatelessWidget {
  const TodoElement({this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: (store) {
        return _ViewModel(
          onTap: () => store.dispatch(InvertTodoAction(todo.id)),
        );
      },
      builder: (context, viewModel) => InkWell(
          onTap: () {
            print('tapped!');
            viewModel.onTap();
          },
          child: Card(
            child: Padding(
              child: Text(
                todo.title,
                style: TextStyle(
                  color: Colors.white,
                  decoration: todo.active
                      ? TextDecoration.none
                      : TextDecoration.lineThrough,
                ),
              ),
              padding: const EdgeInsets.all(20),
            ),
            color: todo.active ? Colors.blue : Colors.black12,
          )),
    );
  }
}

class _ViewModel {
  _ViewModel({
    this.onTap,
  });

  final VoidCallback onTap;
}
