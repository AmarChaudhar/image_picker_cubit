part of 'image_cubit.dart';

sealed class ImageState {}

final class ImageInitialState extends ImageState {}

final class ImageLoadedState extends ImageState {
  final String ImagePath;
  ImageLoadedState(this.ImagePath);
}

final class ImageErrorState extends ImageState {
  final String ErrorMas;
  ImageErrorState(this.ErrorMas);
}
