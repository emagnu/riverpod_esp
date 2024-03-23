//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_esp/config/config.dart';
import 'package:uuid/uuid.dart';
//  Import FILES
import '../../domain/entities/todo.dart';
//  PARTS
part 'todos_providers.g.dart';
//  PROVIDERS

// @riverpod
@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void setCurrentFilter(FilterType newFilter) {
    state = newFilter;
  }
}

// @riverpod
@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: DateTime.now()),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: DateTime.now()),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
        Todo(
            id: uuid.v4(),
            description: RandomGenerator.getRandomName(),
            completedAt: null),
      ];

  void toggleTodo(String id) {
    debugPrint('Inside toggleTodo(id): $id');
    state = state.map((todo) {
      if (todo.id == id) {
        debugPrint(
            'Inside toggleTodo(id): $id -> ${todo.id} -> ${todo.done ? 'done' : 'pending'}');
        todo.copyWith(completedAt: todo.done ? null : DateTime.now());
        debugPrint(todo.done ? 'done' : 'pending');
      }
      return todo;
    }).toList();
  }

  void createTodo(String description) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}

/// filteredTodos // SOLO LECTURA -> NO clase!

@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  final currentFilter = ref.watch(todoCurrentFilterProvider);
  final todos = ref.watch(todosProvider);
  switch (currentFilter) {
    case FilterType.all:
      return todos;
    case FilterType.completed:
      return todos.where((todo) => todo.done).toList();
    case FilterType.pending:
      return todos.where((todo) => !todo.done).toList();
  }
}

//  ///

enum FilterType { all, completed, pending }

const uuid = Uuid();
