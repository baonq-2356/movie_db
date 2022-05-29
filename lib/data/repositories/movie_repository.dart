import 'package:movie_db/data/models/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getMovies();

  Future<Movie> getMovieDetail();
}
