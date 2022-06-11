import 'package:flutter/material.dart';
import 'package:flutter_provider_example/presentation/screens/FavouriteMovies.dart';
import 'package:flutter_provider_example/presentation/screens/MainDrawer.dart';
import 'package:flutter_provider_example/presentation/screens/MovieListView.dart';
import 'package:flutter_provider_example/providers/books_provider.dart';
import 'package:flutter_provider_example/providers/movie_provider.dart';
import 'package:flutter_provider_example/utils/provider_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Books(),
        ),
        ChangeNotifierProvider(
          create: (_) => Movies(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          home: MyHomePage(),
          routes: {
            ProviderRoutes.routeName: (context) => FavoriteMovies(),
          }),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
        ),
      ),
      drawer: MainDrawer(),
      body: MovieListView(),
    );
  }
}
