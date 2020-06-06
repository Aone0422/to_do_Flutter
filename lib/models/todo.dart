import 'package:to_do/repositories/todo_entity.dart';
import 'package:uuid/uuid.dart';

class Todo {
  Todo(this.title, {this.active = true, String detail, String id})
      : detail = detail ?? '',
        id = id ?? Uuid().v4();

  final String title;
  bool active;
  final String detail;
  final String id;

  TodoEntity toEntity() {
    return TodoEntity(title, active, detail, id);
  }
}
