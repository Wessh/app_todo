import 'package:app_todo/core/util/result.dart';
import 'package:app_todo/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Result> insertTodo(Todo todo);
  Future<Result> removeTodo(Todo todo);
  Future<Result> getTodoById(String id);
  Future<Result> getAllTodos();
}
