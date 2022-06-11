import 'package:flutter/material.dart';
import 'package:flutter_provider_example/presentation/widgets/FavoritesGrid.dart';
import 'package:flutter_provider_example/presentation/screens/FavouriteMovies.dart';
import 'package:flutter_provider_example/presentation/widgets/NoFavourite.dart';
import 'package:flutter_provider_example/providers/movie_provider.dart';
import 'package:provider/provider.dart';


class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int favCount = Provider.of<Movies>(context, listen: false).favCount;
    print(favCount);
    return (favCount > 0) ? FavoritesGrid() : NoFavorite();
  }
}
