import 'package:flutter/material.dart';
import 'package:to_do/todo_app.dart';
import 'package:to_do/repositories/todo_list_repository_impl.dart';
import 'package:redux/redux.dart';
import 'package:to_do/redux/middleware/store_todo_middleware.dart';
import 'package:to_do/redux/reducer/app_state_reducer.dart';
import 'package:to_do/redux/state/app_state.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(home: InitialScreen()));
}

class InitialScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do App'),
      ),
      body: ListView(
        children: [
          RaisedButton(
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (context) => TodoApp(
                          store: Store<AppState>(
                        appReducer,
                        initialState: const AppState(todoList: []),
                        middleware:
                            createStoreTodoMiddleware(TodoListRepositoryImpl()),
                      ))))
            },
            child: const Text('TodoApp'),
          ),
        ],
      ),
    );
  }
}
