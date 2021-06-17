import 'package:movie_app/data/models/movie_model.dart';

class MoviesResultModel {
  late List<MovieModel> results;

  MoviesResultModel({required this.results});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <MovieModel>[];
      json['results'].forEach((v) {
        results.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results.map((v) => v.toJson()).toList();
    return data;
  }
}
