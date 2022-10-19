import 'package:app_todo/core/util/result.dart';
import 'package:app_todo/features/todo/domain/repositories/todo_repository.dart';

class GetTodoByIdUsecase {
  final TodoRepository? todoRepository;

  GetTodoByIdUsecase(this.todoRepository);

  Future<Result> call(String id) async {
    final data = await todoRepository!.getTodoById(id);
    return data;
  }
}
