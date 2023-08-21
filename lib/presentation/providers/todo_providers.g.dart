// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosHash() => r'f9fef2cc4d44794c5950526bd96a86771123344f';

/// See also [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoCurrentFilterHash() => r'2d187328b04df1086c2b96ee2f04c3d6dad3b67d';

/// See also [TodoCurrentFilter].
@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider =
    NotifierProvider<TodoCurrentFilter, TodoFilter>.internal(
  TodoCurrentFilter.new,
  name: r'todoCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFilter = Notifier<TodoFilter>;
String _$todoListHash() => r'702507a3ccf285d1c4050bbb247381e51e08a920';

/// See also [TodoList].
@ProviderFor(TodoList)
final todoListProvider = NotifierProvider<TodoList, List<Todo>>.internal(
  TodoList.new,
  name: r'todoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoList = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
