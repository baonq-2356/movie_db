import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';
import 'package:movie_db/ui/screens/home/widgets/movie_item.dart';

import '../../../resources/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                Strings.homeScreenTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24,),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const MovieItem();
                    }
                ),
            ),
          ],
        ),
      ),
    );
  }

}
