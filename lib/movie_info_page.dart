import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'movie.dart';

class MovieInfoPage extends StatefulWidget {
  final Movie movie;

  MovieInfoPage(this.movie);

  @override
  _MovieInfoPageState createState() => _MovieInfoPageState();
}

class _MovieInfoPageState extends State<MovieInfoPage> {
  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(widget.movie.picture ?? ""),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                movie.title,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            if (movie.description != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.description!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            if (movie.rating != null) ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.rating.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              RatingBar.builder(
                initialRating: movie.rating!,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20,
                itemCount: 10,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                  movie.rating = rating;
                  setState(() {});
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
