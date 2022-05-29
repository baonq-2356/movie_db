import 'package:movie_db/data/api/data_source/remote/movie_remote_data_source.dart';
import 'package:movie_db/data/models/movie.dart';
import 'package:movie_db/data/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource movieRemoteDataSource;

  MovieRepositoryImpl(this.movieRemoteDataSource);

  @override
  Future<Movie> getMovieDetail() {
    return movieRemoteDataSource.getMovieDetail();
  }

  @override
  Future<List<Movie>> getMovies() {
    return movieRemoteDataSource.getMovies();
  }
}
