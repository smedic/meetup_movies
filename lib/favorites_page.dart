import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies_demo/movie_item.dart';

import 'main.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final movies = moviesStore.movies;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Observer(
        builder: (BuildContext context) {
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (_, index) {
              final key = movies.keys.elementAt(index);
              final movie = movies[key];
              return MovieItem(movie!);
            },
          );
        },
      ),
    );
  }
}
