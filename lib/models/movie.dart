import 'package:flutter/material.dart';


class Movie{
  final int id;
  final String title;
  final String overview;
  final String release_date;
  final String vote_average;
  final String poster_path;


  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.release_date,
    required this.vote_average,
    required this.poster_path
  });



  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        release_date: json['release_date'],
        vote_average: json['vote_average'],
        poster_path: 'https://image.tmdb.org/t/p/w600_and_h900_bestv2${json['poster_path']}' ?? ''
    );
  }


  factory Movie.empty(){
    return Movie(
        id: 0,
        title: 'no-data',
        overview: '',
        release_date: '',
        vote_average: '',
        poster_path: ''
    );
  }

}