import 'package:flutter/material.dart';

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
//            onPressed: () => {
//              Navigator.of(context).push(MaterialPageRoute<void>(
//                  builder: (context) => TodoApp(
//                          store: Store<AppState>(
//                        appReducer,
//                        initialState: const AppState(todoList: []),
//                        middleware:
//                            createStoreTodoMiddleware(TodoListRepositoryImpl()),
//                      ))))
//            },
            child: const Text('TodoApp'),
          ),
        ],
      ),
    );
  }
}
