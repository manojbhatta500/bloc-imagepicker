part of 'switch_bloc.dart';

final class SwitchState extends Equatable {
  final bool checker;
  final double value;
  const SwitchState({this.checker = false, this.value = 1});

  SwitchState copyWith({bool? inputchecker, double? inputdouble}) {
    return SwitchState(
        checker: inputchecker ?? checker, value: inputdouble ?? value);
  }

  @override
  List<Object> get props => [checker, value];
}
