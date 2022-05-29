import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';
import 'package:movie_db/resources/strings.dart';

class MovieItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.images.amongUs.path,
          width: 100
        ),
        const Expanded(
            child: Text(Strings.test)
        )
      ],
    );
  }
}
