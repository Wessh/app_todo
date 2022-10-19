// Mocks generated by Mockito 5.1.0 from annotations
// in todo_list/test/features/todo/domain/usecases/get_all_todos_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:app_todo/core/util/result.dart' as _i2;
import 'package:app_todo/features/todo/domain/entities/todo.dart' as _i5;
import 'package:app_todo/features/todo/domain/repositories/todo_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeResult_0<T> extends _i1.Fake implements _i2.Result<T> {}

/// A class which mocks [TodoRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTodoRepository extends _i1.Mock implements _i3.TodoRepository {
  MockTodoRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<dynamic>> insertTodo(_i5.Todo? todo) =>
      (super.noSuchMethod(Invocation.method(#insertTodo, [todo]),
              returnValue:
                  Future<_i2.Result<dynamic>>.value(_FakeResult_0<dynamic>()))
          as _i4.Future<_i2.Result<dynamic>>);
  @override
  _i4.Future<_i2.Result<dynamic>> removeTodo(_i5.Todo? todo) =>
      (super.noSuchMethod(Invocation.method(#removeTodo, [todo]),
              returnValue:
                  Future<_i2.Result<dynamic>>.value(_FakeResult_0<dynamic>()))
          as _i4.Future<_i2.Result<dynamic>>);
  @override
  _i4.Future<_i2.Result<dynamic>> getTodoById(String? id) =>
      (super.noSuchMethod(Invocation.method(#getTodoById, [id]),
              returnValue:
                  Future<_i2.Result<dynamic>>.value(_FakeResult_0<dynamic>()))
          as _i4.Future<_i2.Result<dynamic>>);
  @override
  _i4.Future<_i2.Result<dynamic>> getAllTodos() =>
      (super.noSuchMethod(Invocation.method(#getAllTodos, []),
              returnValue:
                  Future<_i2.Result<dynamic>>.value(_FakeResult_0<dynamic>()))
          as _i4.Future<_i2.Result<dynamic>>);
}