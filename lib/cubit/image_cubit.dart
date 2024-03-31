import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:meta/meta.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageInitialState());

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> pickImage() async {
    try {
      final PickedImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (PickedImage != null) {
        emit(ImageLoadedState(PickedImage.path));
      } else {
        emit(ImageErrorState("No selecte image"));
      }
    } catch (e) {
      emit(ImageErrorState(e.toString()));
    }
  }

  void reset() {
    emit(ImageInitialState());
  }
}
