import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => InitialCounterState(0);

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    switch (event.runtimeType) {
      case Add:
        yield Increased(state.value + 1);
        break;
      case Subtract:
        yield Decreased(state.value - 1);
        break;
    }
  }
}
