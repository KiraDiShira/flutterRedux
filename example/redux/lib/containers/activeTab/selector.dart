import 'package:redux_sample/store/appState/app_state.dart';
import 'package:redux_sample/store/appState/app_tab.dart';

AppTab activeTabSelector(AppState state) => state.activeTab;