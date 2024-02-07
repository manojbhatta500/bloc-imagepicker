part of 'switch_bloc.dart';

sealed class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class ToogleSwitch extends SwitchEvent {}

class ChangeSliderValue extends SwitchEvent {
  final double value;

  const ChangeSliderValue(this.value);
}
