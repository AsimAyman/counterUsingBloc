import 'package:flutter/material.dart';
import 'package:untitled14/Bloc/boc.dart';
import 'package:untitled14/Bloc/provider.dart';

void main() {
  runApp( Provider(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of(context);
    bloc.counter = 0;
    return
      MaterialApp(
          home: StreamBuilder(
            stream: bloc.counter,
            builder: (context, snapshot) => Scaffold(
              body: Center(
              child: Text(snapshot.data.toString()),
          ),
            floatingActionButton: FloatingActionButton(
            onPressed: () {
              int value = snapshot.data! + 1;
              bloc.counter = value;
            },
          ),
      )),
    );
  }
}
