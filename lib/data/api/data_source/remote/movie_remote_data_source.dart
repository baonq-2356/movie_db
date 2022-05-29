import 'package:movie_db/data/api/movie_api.dart';
import 'package:movie_db/data/models/movie.dart';

class MovieRemoteDataSource extends MovieApi {
  @override
  Future<Movie> getMovieDetail() async {
    return Movie();
  }

  @override
  Future<List<Movie>> getMovies() async {
    return List<Movie>.generate(10, (index) => Movie());
  }
}
