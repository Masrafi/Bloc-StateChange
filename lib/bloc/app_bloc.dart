import 'package:blocwithmasrafi/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_event.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      emit(CounterStates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      emit(CounterStates(counter: state.counter - 1));
    });
  }
}
