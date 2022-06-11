import 'package:flutter/material.dart';
import 'package:flutter_provider_example/presentation/screens/FavouriteMovies.dart';
import 'package:flutter_provider_example/presentation/widgets/FavoriteGridItem.dart';
import 'package:flutter_provider_example/providers/movie_provider.dart';
import 'package:provider/provider.dart';


class FavoritesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: Provider.of<Movies>(context, listen: false).favCount,
      itemBuilder: (context, index) => FavoriteGridItem(
        favMovieIndex: index,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
