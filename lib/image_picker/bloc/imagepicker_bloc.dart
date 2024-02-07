import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:statemanagement/image_picker/models/imagepickerclass.dart';

part 'imagepicker_event.dart';
part 'imagepicker_state.dart';

class ImagepickerBloc extends Bloc<ImagepickerEvent, ImagepickerState> {
  ImagePickerClass manager = ImagePickerClass();
  ImagepickerBloc() : super(ImagepickerState()) {
    on<PickImageFromGallery>(_pickImageFromGallery);
    on<PickImageFromCamera>(_pickImageFromCamera);
  }

  void _pickImageFromGallery(
      PickImageFromGallery event, Emitter<ImagepickerState> emit) async {
    XFile? image = await manager.pickImageFromGallery();
    emit(state.copyWith(gotfile: image));
  }

  // void _pickImageFromCamera(
  //     PickImageFromGallery event, Emitter<ImagepickerState> emit) async {
  //   XFile? image = await manager.PickImageFromCamera();
  //   emit(state.copyWith(gotfile: image));
  // }

  FutureOr<void> _pickImageFromCamera(
      PickImageFromCamera event, Emitter<ImagepickerState> emit) async {
    XFile? image = await manager.PickImageFromCamera();
    emit(state.copyWith(gotfile: image));
  }
}
