import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final String originalName;
  final List<String> originCountry;
  final String posterPath;
  final String name;
  final double voteAverage;
  final String firstAirDate;
  final String overview;
  final int id;
  final int voteCount;
  final List<int> genreIds;
  final String backdropPath;
  final String originalLanguage;
  final double popularity;
  final String mediaType;
  final String originalTitle;
  final bool video;
  final String releaseDate;
  final String title;
  final bool adult;

  MovieModel(
      {required this.originalName,
      required this.originCountry,
      required this.posterPath,
      required this.name,
      required this.voteAverage,
      required this.firstAirDate,
      required this.overview,
      required this.id,
      required this.voteCount,
      required this.genreIds,
      required this.backdropPath,
      required this.originalLanguage,
      required this.popularity,
      required this.mediaType,
      required this.originalTitle,
      required this.video,
      required this.releaseDate,
      required this.title,
      required this.adult})
      : super(
            id: id,
            title: title,
            backdropPath: backdropPath,
            posterPath: posterPath,
            releaseDate: releaseDate,
            voteAverage: voteAverage,
            overview: overview);

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      originalName: json['original_name'],
      originCountry: json['origin_country'].cast<String>(),
      posterPath: json['poster_path'],
      name: json['name'],
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      firstAirDate: json['first_air_date'],
      overview: json['overview'],
      id: json['id'],
      voteCount: json['vote_count'],
      genreIds: json['genre_ids'].cast<int>(),
      backdropPath: json['backdrop_path'],
      originalLanguage: json['original_language'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
      originalTitle: json['original_title'],
      video: json['video'],
      releaseDate: json['release_date'],
      title: json['title'],
      adult: json['adult'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['original_name'] = this.originalName;
    data['origin_country'] = this.originCountry;
    data['poster_path'] = this.posterPath;
    data['name'] = this.name;
    data['vote_average'] = this.voteAverage;
    data['first_air_date'] = this.firstAirDate;
    data['overview'] = this.overview;
    data['id'] = this.id;
    data['vote_count'] = this.voteCount;
    data['genre_ids'] = this.genreIds;
    data['backdrop_path'] = this.backdropPath;
    data['original_language'] = this.originalLanguage;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    data['original_title'] = this.originalTitle;
    data['video'] = this.video;
    data['release_date'] = this.releaseDate;
    data['title'] = this.title;
    data['adult'] = this.adult;
    return data;
  }
}
