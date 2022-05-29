import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';
import 'package:movie_db/ui/screens/home/widgets/movie_item.dart';

import '../../../resources/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.homeScreenTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return MovieItem();
          }
      ),
    );
  }

}
