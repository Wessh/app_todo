import 'package:app_todo/core/util/result.dart';
import 'package:app_todo/features/todo/domain/repositories/todo_repository.dart';

class GetAllTodosUsecase {
  final TodoRepository? todoRepository;

  GetAllTodosUsecase(this.todoRepository);

  Future<Result> call() async => todoRepository!.getAllTodos();
}
