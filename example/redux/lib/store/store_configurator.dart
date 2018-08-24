import 'package:redux/redux.dart';
import 'package:redux_sample/containers/todo/middleware.dart';
import 'package:redux_sample/containers/extraAction/middleware.dart';
import 'package:redux_sample/containers/appLoading/reducer.dart';
import 'package:redux_sample/containers/activeTab/reducer.dart';
import 'package:redux_sample/containers/todo/reducer.dart';
import 'package:redux_sample/containers/filterSelector/reducer.dart';
import 'package:redux_sample/store/appState/app_state.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    isLoading: loadingReducer(state.isLoading, action),
    todos: todosReducer(state.todos, action),
    activeFilter: visibilityReducer(state.activeFilter, action),
    activeTab: tabsReducer(state.activeTab, action),
  );
}

List<Middleware<AppState>> createAppMiddleware() {
  var appMiddleware = [
    createTodosMiddleware(),
    createExtraActionMiddleware(),
  ].expand((x) => x).toList();
  return appMiddleware;
}

Store<AppState> createStore(){
  return Store<AppState>(
    appReducer,
    initialState: AppState.loading(),
    middleware: createAppMiddleware(),
  );
}
