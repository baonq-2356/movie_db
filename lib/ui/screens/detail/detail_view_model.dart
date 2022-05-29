import 'package:flutter/material.dart';
import 'package:movie_db/data/repositories/movie_repository.dart';

class DetailViewModel extends ChangeNotifier {
  final MovieRepository movieRepository;

  DetailViewModel(this.movieRepository);

  void getMovieDetail() async {
    await movieRepository.getMovieDetail();
  }
}
