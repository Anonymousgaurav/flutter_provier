import 'package:flutter/material.dart';
import 'package:flutter_provider_example/presentation/widgets/MovieTile.dart';
import 'package:flutter_provider_example/providers/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Movies movies = Provider.of<Movies>(context, listen: false);
    return ListView.builder(
      itemCount: movies.movieCount,
      itemBuilder: (BuildContext context, int index) {
        return MovieTile(
          movieIndex: index,
        );
      },
    );
  }
}
