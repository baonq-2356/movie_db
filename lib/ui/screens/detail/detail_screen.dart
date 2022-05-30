import 'package:flutter/material.dart';
import 'package:movie_db/gen/assets.gen.dart';
import 'package:movie_db/resources/strings.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blue,
                        size: 32.0,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Text(
                        Strings.test_1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.red,
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(Assets.images.amongUs.path,),
                        ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  height: 36,
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Expanded(
                            child: Text(
                              Strings.test_1,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                        CircularProgressIndicator(
                          color: Colors.grey,
                          strokeWidth: 4,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
