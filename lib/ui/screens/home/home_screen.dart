import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';

import '../../../resources/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Strings.detailScreenTag);
          },
          child: Image.asset(Assets.images.amongUs.path),
        ),
      ),
    );
  }

}
