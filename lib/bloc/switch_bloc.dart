import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<ToogleSwitch>(_toogleswitch);
    on<ChangeSliderValue>(_changeslidervalue);
  }

  void _toogleswitch(ToogleSwitch event, Emitter<SwitchState> emit) {
    emit(state.copyWith(inputchecker: !state.checker));
  }

  void _changeslidervalue(ChangeSliderValue event, Emitter<SwitchState> emit) {
    final double currentvalue = event.value;
    emit(state.copyWith(inputdouble: currentvalue));
  }
}
