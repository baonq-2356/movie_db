import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';
import 'package:movie_db/resources/strings.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Strings.detailScreenTag),
      child: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.amongUs.path,
                width: 150,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      Strings.test_1,
                      style: TextStyle(
                          fontSize: 24
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      Strings.test,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
