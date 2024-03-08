

import 'dart:async';

import 'increase_counter.dart';

final bloc = Bloc();
class Bloc with IncreaseCounter {
  final _counterControl = StreamController<int>();

 Stream<int> get counter=> _counterControl.stream.transform(increaseCounter);

 set counter(value){
    _counterControl.sink.add(value);
  }

  dispose(){
   _counterControl.close();
  }
}