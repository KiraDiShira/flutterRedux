import 'package:flutter_architecture_samples/optional.dart';
import 'package:redux_sample/store/appState/app_state.dart';
import 'package:redux_sample/store/appState/todo.dart';
import 'package:redux_sample/store/appState/visibility_filter.dart';

Optional<Todo> todoSelector(List<Todo> todos, String id) {
  try {
    return Optional.of(todos.firstWhere((todo) => todo.id == id));
  } catch (e) {
    return Optional.absent();
  }
}

List<Todo> todosSelector(AppState state) => state.todos;
VisibilityFilter activeFilterSelector(AppState state) => state.activeFilter;

List<Todo> filteredTodosSelector(
  List<Todo> todos,
  VisibilityFilter activeFilter,
) {
  return todos.where((todo) {
    if (activeFilter == VisibilityFilter.all) {
      return true;
    } else if (activeFilter == VisibilityFilter.active) {
      return !todo.complete;
    } else if (activeFilter == VisibilityFilter.completed) {
      return todo.complete;
    }
  }).toList();
}
