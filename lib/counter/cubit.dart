import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());
 static CounterCubit get(context)=>BlocProvider.of(context);

  int counter =0;
  void add()
  {
    counter++;
    emit(CounterAdd());
  }

  void minus()
  {
    counter--;
    emit(CounterMinus());
  }
}
