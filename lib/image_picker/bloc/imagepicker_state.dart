part of 'imagepicker_bloc.dart';

class ImagepickerState extends Equatable {
  final XFile? image;

  ImagepickerState({this.image});

  ImagepickerState copyWith({XFile? gotfile}) {
    return ImagepickerState(image: gotfile ?? image);
  }

  @override
  List<Object?> get props => [image?.path];

  @override
  bool get stringify => true;
}
