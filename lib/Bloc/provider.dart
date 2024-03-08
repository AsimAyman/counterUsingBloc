import 'package:flutter/material.dart';
import 'package:untitled14/Bloc/boc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({key, child}) : super(key: key, child: child);

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()
            as Provider)
        .bloc;
  }

  @override
  bool updateShouldNotify(_) => true;
}
