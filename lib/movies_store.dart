import 'package:mobx/mobx.dart';

import 'movie.dart';

part 'movies_store.g.dart';

class MoviesStore = _MoviesStore with _$MoviesStore;

abstract class _MoviesStore with Store {
  @observable
  ObservableMap<int, Movie> movies = ObservableMap();

  @action
  void addToFavorites(Movie movie) {
    movies[movie.id] = movie;
  }

  @action
  void removeFromFavorites(int id) {
    movies.remove(id);
  }
}
