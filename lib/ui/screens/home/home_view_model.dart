import 'package:flutter/material.dart';
import 'package:movie_db/data/repositories/movie_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final MovieRepository movieRepository;

  HomeViewModel(this.movieRepository);

  void getMovies() async {
    await movieRepository.getMovies();
  }
}
