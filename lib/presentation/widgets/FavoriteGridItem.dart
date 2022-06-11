import 'package:flutter/material.dart';
import 'package:flutter_provider_example/providers/books_provider.dart';
import 'package:flutter_provider_example/providers/movie_provider.dart';
import 'package:provider/provider.dart';

class FavoriteGridItem extends StatelessWidget {
  final int favMovieIndex;

  FavoriteGridItem({required this.favMovieIndex});

//   @override
//   Widget build(BuildContext context) {
//     final movies = Provider.of<Movies>(context, listen: false);
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(5),
//       child: GridTile(
//         child: Image.network(
//           movies.favoriteMovies[favMovieIndex].posterUrl,
//           fit: BoxFit.cover,
//         ),
//         footer: GridTileBar(
//           backgroundColor: Colors.black87,
//           trailing: IconButton(
//             icon: Icon(
//               Icons.play_arrow,
//               size: 22.0,
//             ),
//             color: Theme.of(context).accentColor,
//             onPressed: () {},
//           ),
//           leading: Column(
//             children: [
//               Text(
//                 movies.favoriteMovies[favMovieIndex].movieName,
//                 // 'Book details:',
//                 style: TextStyle(
//                   fontSize: 10.0,
//                 ),
//               ),
//               Consumer<Books>(
//                 builder: (context, books, _) {
//                   return Text(
//                     books
//                         .getBookDetails(
//                             movies.favoriteMovies[favMovieIndex].movieId)
//                         .bookName,
//                     style: TextStyle(
//                       fontSize: 13.0,
//                     ),
//                   );
//                 },
//               ),
//               Consumer<Books>(
//                 builder: (context, books, _) {
//                   return Text(
//                     books
//                         .getBookDetails(
//                             movies.favoriteMovies[favMovieIndex].movieId)
//                         .author,
//                     style: TextStyle(
//                       fontSize: 11.0,
//                       color: Colors.orange,
//                     ),
//                   );
//                 },
//               )
//             ],
//           ),
//           // ]),
//         ),
//       ),
//     );
//   }
// }
  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<Movies>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: GridTile(
        child: Image.network(
          movies.favoriteMovies[favMovieIndex].posterUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Books>(
            builder: (context, books, child) => Column(
              children: [
                child,
                Text(
                  books
                      .getBookDetails(
                      movies.favoriteMovies[favMovieIndex].movieId)
                      .bookName,
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                Text(
                  books
                      .getBookDetails(
                      movies.favoriteMovies[favMovieIndex].movieId)
                      .author,
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
            child: Text(
              'Book details:',
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
