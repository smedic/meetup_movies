import 'package:flutter/material.dart';
import 'package:movies_demo/movies_repository.dart';

import 'favorites_page.dart';
import 'movie.dart';
import 'movie_info_page.dart';
import 'movie_item.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  List<Movie>? movies;

  @override
  void initState() {
    super.initState();

    movies = MoviesRepository().dummyMovies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies page"),
        actions: [
          IconButton(
            onPressed: () => _openFavorites(),
            icon: Icon(Icons.star),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: movies?.length ?? 0,
        itemBuilder: (context, index) {
          if (movies == null) {
            return Container();
          }
          return InkWell(
            onTap: () => _openMovieInfo(movies![index]),
            child: MovieItem(movies![index]),
          );
        },
      ),
    );
  }

  void _openFavorites() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesPage(),
      ),
    );
  }

  void _openMovieInfo(Movie movie) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MovieInfoPage(movie),
      ),
    );
    setState(() {});
  }
}
