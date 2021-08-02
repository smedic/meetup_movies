// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MoviesStore on _MoviesStore, Store {
  final _$moviesAtom = Atom(name: '_MoviesStore.movies');

  @override
  ObservableMap<int, Movie> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableMap<int, Movie> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$_MoviesStoreActionController = ActionController(name: '_MoviesStore');

  @override
  void addToFavorites(Movie movie) {
    final _$actionInfo = _$_MoviesStoreActionController.startAction(
        name: '_MoviesStore.addToFavorites');
    try {
      return super.addToFavorites(movie);
    } finally {
      _$_MoviesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromFavorites(int id) {
    final _$actionInfo = _$_MoviesStoreActionController.startAction(
        name: '_MoviesStore.removeFromFavorites');
    try {
      return super.removeFromFavorites(id);
    } finally {
      _$_MoviesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}
