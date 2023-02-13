part of 'counter_bloc.dart';

enum StatusEnum { loading, loaded, init }

@freezed
class CounterState with _$CounterState {
  CounterState._();

  factory CounterState({required int number, required StatusEnum status}) =
      _CounterState;

  factory CounterState.initial() {
    // print(is);
    return CounterState(number: 0, status: StatusEnum.init);
  }
  bool get isLoading =>
      status == StatusEnum.loading;
}
