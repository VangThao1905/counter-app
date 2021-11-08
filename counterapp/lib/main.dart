import 'package:counterapp/blocs/counter_bloc.dart';
import 'package:counterapp/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        title: 'Flutter Demo',
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(0),
          child: CounterPage(),
        ));
  }
}
