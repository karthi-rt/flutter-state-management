
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc() :super(0) { // assign initial value
  // for incre/decre method to register via 'on'

  // event -> already irukara state trigger, emit -> trigger new state
  on<IncrementEvent>((event, emit){
    emit(state+1);
  }); 

  on<DecrementEvent>((event, emit){
    emit(state-1);
  });
  }
}