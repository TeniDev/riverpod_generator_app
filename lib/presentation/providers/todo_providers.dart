import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../config/config.dart';
import '../../domain/domain.dart';

part 'todo_providers.g.dart';

const uuid = Uuid();

enum TodoFilter { all, completed, pending }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  TodoFilter build() => TodoFilter.all;

  void changeFilter(TodoFilter filter) {
    state = filter;
  }
}

@Riverpod(keepAlive: true)
class TodoList extends _$TodoList {
  @override
  List<Todo> build() {
    return [
      Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
      Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
      Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
      Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
      Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    ];
  }

  void addTodo() {
    state = [
      ...state,
      Todo(
        id: uuid.v4(),
        description: RandomGenerator.getRandomName(),
        completedAt: null,
      ),
    ];
  }

  void toggleDone(String id) {
    state = state.map((todo) {
      if (todo.id != id) return todo;

      if (todo.done) {
        return todo.copyWith(completedAt: null);
      }

      return todo.copyWith(completedAt: DateTime.now());
    }).toList();
  }
}

@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  final selectedFilter = ref.watch(todoCurrentFilterProvider);
  final todos = ref.watch(todoListProvider);

  switch (selectedFilter) {
    case TodoFilter.all:
      return todos;
    case TodoFilter.completed:
      return todos.where((element) => element.done).toList();
    case TodoFilter.pending:
      return todos.where((element) => !element.done).toList();
  }
}
