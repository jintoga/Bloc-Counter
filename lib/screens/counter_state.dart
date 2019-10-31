import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final int value;

  const CounterState(this.value);

  List<Object> get props => [value];
}

class InitialCounterState extends CounterState {
  InitialCounterState(int value) : super(value);
}

class Decreased extends CounterState {
  Decreased(int value) : super(value);
}

class Increased extends CounterState {
  Increased(int value) : super(value);
}
