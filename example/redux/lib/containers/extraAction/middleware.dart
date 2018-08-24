// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:redux_sample/containers/extraAction/action.dart';
import 'package:redux_sample/containers/todo/selector.dart';
import 'package:redux_sample/store/appState/app_state.dart';
import 'package:todos_repository/todos_repository.dart';
import 'package:todos_repository_flutter/todos_repository_flutter.dart';

List<Middleware<AppState>> createExtraActionMiddleware([
  TodosRepository repository = const TodosRepositoryFlutter(
    fileStorage: const FileStorage(
      '__redux_app__',
      getApplicationDocumentsDirectory,
    ),
  ),
]) {
  final saveTodos = _createSaveTodos(repository);


  return [
    TypedMiddleware<AppState, ClearCompletedAction>(saveTodos),
    TypedMiddleware<AppState, ToggleAllAction>(saveTodos),
  ];
}

Middleware<AppState> _createSaveTodos(TodosRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    next(action);

    repository.saveTodos(
      todosSelector(store.state).map((todo) => todo.toEntity()).toList(),
    );
  };
}
