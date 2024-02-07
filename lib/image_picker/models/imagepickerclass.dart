import 'package:image_picker/image_picker.dart';

class ImagePickerClass {
  ImagePicker picker = ImagePicker();

  Future<XFile?> pickImageFromGallery() async {
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);

    return file;
  }

  Future<XFile?> PickImageFromCamera() async {
    final XFile? file = await picker.pickImage(source: ImageSource.camera);
    return file;
  }
}
