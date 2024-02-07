part of 'imagepicker_bloc.dart';

sealed class ImagepickerEvent extends Equatable {
  const ImagepickerEvent();

  @override
  List<Object> get props => [];
}

class PickImageFromGallery extends ImagepickerEvent {}

class PickImageFromCamera extends ImagepickerEvent {}
