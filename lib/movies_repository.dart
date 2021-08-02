import 'movie.dart';

class MoviesRepository {
  List<Movie> getMovies() {
    return dummyMovies;
  }

  final dummyMovies = [
    Movie(
      id: 1,
      title: '12 Angry Men',
      actors: 'Martin Balsam, John Fiedler, Lee J. Cobb, E.G. Marshall',
      picture:
          'https://d1w8cc2yygc27j.cloudfront.net/7371092907625384997/-2997179275946063421.jpg',
      description:
          'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.',
      rating: 9.0,
    ),
    Movie(
      id: 2,
      title: 'The Shawshank Redemption',
      actors: 'Tim Robbins and Morgan Freeman',
      picture: 'https://miro.medium.com/max/1024/1*ZuyHle2wBnM1MY0xkIa9hA.jpeg',
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      rating: 9.3,
    ),
    Movie(
      id: 3,
      title: 'The Godfather',
      actors: 'Marlon Brando, Al Pacino, James Caan, Richard S. Castellano',
      picture: 'https://prolog.rs/upload/content/prolog.N.N.T/godfather9.jpg',
      description:
          'An organized crime dynasty\'s aging patriarch transfers control of his clandestine empire to his reluctant son.',
      rating: 9.2,
    ),
    Movie(
      id: 4,
      title: 'The Godfather: Part II',
      actors: 'Marlon Brando, Al Pacino, James Caan, Richard S. Castellano',
      picture:
          'https://jayjournal.org/wp-content/uploads/2018/03/Screen-Shot-2018-03-20-at-9.02.33-AM.png',
      description:
          'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
      rating: 9.0,
    ),
    Movie(
      id: 5,
      title: 'The Dark Knight',
      actors: 'Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine',
      picture:
          'https://cdn.prime1studio.com/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/h/d/hdmmdc-02_a19.jpg',
      description:
          'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
      rating: 9.0,
    )
  ];
}
