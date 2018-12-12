import 'package:flutter_simple_redux/models/app_state.dart';
import 'package:flutter_simple_redux/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
  );
}
