// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_architecture_samples/flutter_architecture_samples.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_sample/containers/todo/action.dart';
import 'package:redux_sample/containers/todo/addTodo/index.dart';
import 'package:redux_sample/localization.dart';
import 'package:redux_sample/screens/home_screen.dart';
import 'package:redux_sample/store/appState/app_state.dart';
import 'package:redux_sample/store/store_configurator.dart';


void main() {
  // ignore: deprecated_member_use
  MaterialPageRoute.debugEnableFadingRoutes = true;

  runApp(ReduxApp());
}

class ReduxApp extends StatelessWidget {
  final store = createStore();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: ReduxLocalizations().appTitle,
        theme: ArchSampleTheme.theme,
        localizationsDelegates: [
          ArchSampleLocalizationsDelegate(),
          ReduxLocalizationsDelegate(),
        ],
        routes: {
          ArchSampleRoutes.home: (context) {
            return StoreBuilder<AppState>(
              onInit: (store) => store.dispatch(LoadTodosAction()),
              builder: (context, store) {
                return HomeScreen();
              },
            );
          },
          ArchSampleRoutes.addTodo: (context) {
            return AddTodo();
          },
        },
      ),
    );
  }
}
