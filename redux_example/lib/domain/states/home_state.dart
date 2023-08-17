class HomeState {
  final String? imagePath;

  HomeState({this.imagePath});

  HomeState copyWith({String? imagePath}) {
    return HomeState(
      imagePath: imagePath ?? this.imagePath,
    );
  }
}
