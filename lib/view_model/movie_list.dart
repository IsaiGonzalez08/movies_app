import 'package:flutter/material.dart';
import 'package:movies_app/data/remote/response/api_response.dart';
import 'package:movies_app/models/movies_main.dart';
import 'package:movies_app/repository/movie/movie_repository_impl.dart';

class MoviesListVM extends ChangeNotifier {
  final _myRepo = MovieRepoImp();

  ApiResponse<MoviesMain> movieMain = ApiResponse.loading();

  Future<void> fetchMovies() async {
    _setMovieMain(ApiResponse.loading());
    _myRepo
        .getMoviesList()
        .then((value) => _setMovieMain(ApiResponse.completed(value)))
        .onError((error, stackTrace) =>
            _setMovieMain(ApiResponse.error(error.toString())));
  }

  void _setMovieMain(ApiResponse<MoviesMain> response) {
    print("MARAJ :: $response");
    movieMain = response;
    notifyListeners();
  }
}
