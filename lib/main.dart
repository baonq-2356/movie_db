import 'package:flutter/material.dart';
import 'package:movie_db/data/api/data_source/remote/movie_remote_data_source.dart';
import 'package:movie_db/data/repositories/impl/movie_repository_impl.dart';
import 'package:movie_db/data/repositories/movie_repository.dart';
import 'package:movie_db/resources/strings.dart';
import 'package:movie_db/ui/screens/detail/detail_screen.dart';
import 'package:movie_db/ui/screens/detail/detail_view_model.dart';
import 'package:movie_db/ui/screens/home/home_screen.dart';
import 'package:movie_db/ui/screens/home/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<MovieRepository>(create: (_) => MovieRepositoryImpl(MovieRemoteDataSource())),
        ChangeNotifierProvider<HomeViewModel>(create: (context) => HomeViewModel(context.read<MovieRepository>())),
        ChangeNotifierProvider<DetailViewModel>(create: (context) => DetailViewModel(context.read<MovieRepository>())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Strings.homeScreenTag,
      routes: {
        Strings.homeScreenTag: (context) => const HomeScreen(),
        Strings.detailScreenTag: (context) => const DetailScreen(),
      },
    );
  }
}
