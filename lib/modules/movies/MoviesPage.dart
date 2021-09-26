import 'package:app_filmes/modules/movies/widgets/movies_filters.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/movies_header.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(
        children: [
          MoviesHeader(),
          MoviesFilters(),
        ],
      ),
    );
  }
}
