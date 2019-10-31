import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => null;
}

class Subtract extends CounterEvent {}

class Add extends CounterEvent {}
