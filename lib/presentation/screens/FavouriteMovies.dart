import 'package:flutter/material.dart';
import 'package:flutter_provider_example/presentation/screens/FavouritePage.dart';
import 'package:provider/provider.dart';

class FavoriteMovies extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: FavoritePage(),
    );
  }
}
