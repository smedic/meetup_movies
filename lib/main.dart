import 'package:flutter/material.dart';
import 'package:movies_demo/movies_store.dart';

import 'movies_page.dart';

final moviesStore = MoviesStore();

void main() {
  runApp(
    MaterialApp(home: MoviesPage()),
  );
}
