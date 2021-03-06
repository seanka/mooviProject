// ignore_for_file: file_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class MovieData {
  String cover;
  String title;
  String genre;
  String description;
  String rating;
  String director;
  String cast;
  // var backgroundColor;

  MovieData({
    required this.cover,
    required this.title,
    required this.genre,
    required this.description,
    required this.rating,
    required this.director,
    required this.cast,
    // required this.backgroundColor,
  });
}

var movieDataList = [
  MovieData(
    cover: 'assets/images/posterTheRevenant.jpg',
    title: 'The Revenant',
    genre: '2021 . Dark',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
        "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    rating: '8.5/ 10',
    director: 'Director The Revenant',
    cast: 'Cast 1 TR, Cast 2 TR',
    // backgroundColor: Colors.orange,
  ),

  MovieData(
    cover: 'assets/images/posterTheLittlePrince.jpg',
    title: 'The Little Prince',
    genre: '2022 . Comedy',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
        "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    rating: '5.0/ 10',
    director: 'Director The Little Prince',
    cast: 'Cast 1 TLR, Cast 2 TLR',
    // backgroundColor: Colors.orange,
  ),

  MovieData(
    cover: 'assets/images/posterSunshine.jpg',
    title: 'Sunshine',
    genre: '2020 . Drama. Thriller',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
        "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    rating: '9.0/ 10',
    director: 'Director Sunshine',
    cast: 'Cast 1 Sunshine, Cast 2 Sunshine',
    // backgroundColor: Colors.orange,
  ),
];