


import 'dart:async';

mixin IncreaseCounter {
  final increaseCounter = StreamTransformer<int,int>.fromHandlers(
      handleData: (data, sink){
        sink.add(data++);
      }
  );
}
