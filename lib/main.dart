import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_simple_redux/models/app_state.dart';
import 'package:flutter_simple_redux/pages/home_page.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutter_simple_redux/reducers/app_reducer.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  String title = 'Simple Redux Counter';

  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [new LoggingMiddleware.printer()],
  );

  @override
  Widget build(BuildContext context) {
    // Wrap your MaterialApp in a StoreProvider
    return new StoreProvider<AppState>(
      // new
      store: store, // new
      child: new MaterialApp(
        title: title,
        home: new HomePage(title),
      ),
    );
  }
}
