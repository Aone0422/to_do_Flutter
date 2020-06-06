import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:to_do/redux/state/app_state.dart';
import 'package:to_do/widgets/screens/todo/todo_screen.dart';
import 'package:redux/redux.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key key, this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'TODO App',
        home: TodoScreen(
          store: store,
        ),
      ),
    );
  }
}
