
import 'package:movies_app/data/remote/network/api_endpoints.dart';
import 'package:movies_app/data/remote/network/base_api_service.dart';
import 'package:movies_app/data/remote/network/network_api_service.dart';
import 'package:movies_app/models/movies_main.dart';
import 'package:movies_app/repository/movie/movie_repository.dart';

class MovieRepoImp implements MovieRepo {

  BaseApiService apiService = NetworkApiService();

  @override
  Future<MoviesMain?> getMoviesList() async {
    try {
      dynamic response = await apiService.getResponse(
          ApiEndPoints().getMovies);
      print("MARAJ $response");
      final jsonData = MoviesMain.fromJson(response);
      return jsonData;
    } catch (e) {
      rethrow;
    }
  }
}