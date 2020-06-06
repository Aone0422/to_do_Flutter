import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:to_do/models/todo.dart';
import 'package:to_do/redux/action/actions.dart';
import 'package:to_do/redux/state/app_state.dart';
import 'package:to_do/widgets/components/todo_element.dart';
import 'package:redux/redux.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key key, this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO App'),
      ),
      body: StoreConnector<AppState, List<Todo>>(
        converter: (store) => store.state.todoList,
        builder: (context, todoList) => ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoElement(
              todo: todoList[index],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add_circle),
        label: const Text('Add TODO'),
        onPressed: () {
          store.dispatch(AddTodoAction(Todo(
            'Title${store.state.todoList.length}',
          )));
        },
      ),
    );
  }
}
