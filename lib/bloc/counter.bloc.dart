import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}

abstract class CounterState {
  final int counter;

  CounterState({required this.counter});
}

class CounterSuccessState extends CounterState {
  CounterSuccessState({required int counter}) : super(counter: counter);
}

class CounterErrorState extends CounterState {
  final String errorMessage;

  CounterErrorState({required counter, required this.errorMessage})
      : super(counter: counter);
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(counter: 0);
}

// bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<IncrementCounter>((event, emit) {
      if (state.counter < 10) {
        emit(CounterSuccessState(counter: state.counter + 1));
      } else {
        emit(CounterErrorState(
            counter: state.counter,
            errorMessage: "Counter value cannot be greater than 10"));
      }
    });

    on<DecrementCounter>((event, emit) {
      if (state.counter > 0) {
        emit(CounterSuccessState(counter: state.counter - 1));
      } else {
        emit(CounterErrorState(
            counter: state.counter,
            errorMessage: "Counter value cannot be less than 0"));
      }
    });
  }

}
