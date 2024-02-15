import 'package:counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  // CounterCubit cubit = BlocProvider.of(context);

  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 0;

  void increment() {
    counter++;
    emit(CounterPlusState());
  }

  void decrement() {
    counter--;
    emit(CounterMinusState());
  }
}
