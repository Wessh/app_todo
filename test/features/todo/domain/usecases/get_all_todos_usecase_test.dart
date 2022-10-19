import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:app_todo/core/util/result.dart';
import 'package:app_todo/features/todo/data/models/TodoModel.dart';
import 'package:app_todo/features/todo/domain/repositories/todo_repository.dart';
import 'package:app_todo/features/todo/domain/usecases/get_all_todos_usecase.dart';

import 'get_all_todos_usecase_test.mocks.dart';



@GenerateMocks([TodoRepository])
void main() {
  late MockTodoRepository mockTodoRepository;
  late GetAllTodosUsecase getAllTodosUsecase;

  setUp(() {
    mockTodoRepository = MockTodoRepository();
    getAllTodosUsecase = GetAllTodosUsecase(mockTodoRepository);
  });

  List<TodoModel> todos = [
    TodoModel(id: "1", title: "title", content: "content"),
    TodoModel(id: "1", title: "title", content: "content")
  ];

  test('should get all the todos from repository', () async {
    when(mockTodoRepository.getAllTodos())
        .thenAnswer((_) async => Result.completed(todos));

    final result = await getAllTodosUsecase();

    expect(result.data, todos);

    verify(mockTodoRepository.getAllTodos());
    verifyNoMoreInteractions(mockTodoRepository);
  });
}
