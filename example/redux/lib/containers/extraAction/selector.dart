import 'package:redux_sample/store/appState/todo.dart';

bool allCompleteSelector(List<Todo> todos) =>
    todos.every((todo) => todo.complete);