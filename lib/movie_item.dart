import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movies_demo/main.dart';

import 'movie.dart';

class MovieItem extends StatefulWidget {
  final Movie movie;

  MovieItem(this.movie);

  @override
  _MovieItemState createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 100,
            child: Image.network(widget.movie.picture ?? ""),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    widget.movie.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.movie.description ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          if (widget.movie.rating != null)
            Text(
              widget.movie.rating.toString(),
            ),
          Observer(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    if (moviesStore.movies.containsKey(widget.movie.id)) {
                      moviesStore.removeFromFavorites(widget.movie.id);
                    } else {
                      moviesStore.addToFavorites(widget.movie);
                    }
                  },
                  icon: moviesStore.movies.containsKey(widget.movie.id)
                      ? Icon(Icons.star)
                      : Icon(Icons.star_outline),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
