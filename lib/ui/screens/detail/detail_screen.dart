import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Image.asset(Assets.images.beautifulGirl.path),
        ),
      ),
    );
  }
}
