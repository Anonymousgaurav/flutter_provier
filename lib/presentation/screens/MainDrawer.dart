import 'package:flutter/material.dart';
import 'package:flutter_provider_example/providers/movie_provider.dart';
import 'package:flutter_provider_example/utils/provider_routes.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 40.0,
              ),
              width: double.infinity,
              height: 100.0,
              color: Colors.red[600],
              child: Text(
                'Movies',
              ),
            ),
            DrawerListTile(
                name: 'Home',
                icon: Icons.home,
                onTapHandler: () => Navigator.pushNamed(context, '/')
            ),
            DrawerListTile(
                name: 'Favorites',
                icon: Icons.favorite,
                onTapHandler: () => Navigator.popAndPushNamed(context, ProviderRoutes.routeName)
                ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onTapHandler;

  const DrawerListTile({
    required this.name,
    required this.icon,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap : () =>  onTapHandler.call(),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 0.0),
        leading: Icon(
          icon,
          color: Colors.red[600],
          size: 30.0,
        ),
        title: Text(
          name,
        ),
        trailing: (name == 'Favorites')
            ? Consumer<Movies>(
                builder: (context, movies, _) {
                  return Text(
                    movies.favCount.toString(),
                  );
                },
              )
            : null,
      ),
    );
  }
}
