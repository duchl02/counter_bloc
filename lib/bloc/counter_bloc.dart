import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<_Increment>(_onCrement);
  }

  Future<void> _onCrement(_Increment event, Emitter<CounterState> emit) async {
    emit(state.copyWith(status: StatusEnum.loading));
    await Future.delayed(const Duration(milliseconds: 500));
    emit(
      state.copyWith(number: state.number + 1, status: StatusEnum.loaded),
    );
  }
}
