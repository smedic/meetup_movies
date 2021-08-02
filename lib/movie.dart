class Movie {
  int id;
  String title;
  String? actors;
  String? description;
  String? picture;
  double? rating;

  Movie({
    required this.id,
    required this.title,
    this.actors,
    this.description,
    this.picture,
    this.rating,
  });
}
