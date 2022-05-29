import 'package:movie_db/data/models/movie.dart';

abstract class MovieApi {
    Future<List<Movie>> getMovies();

    Future<Movie> getMovieDetail();
}
