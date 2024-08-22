import 'package:cloud_firestore/cloud_firestore.dart';

class SongsEntity {
  final String title;
  final String artist;
  final num duration;
  final Timestamp releaseDate;
  final String cover_url;

  SongsEntity(
      {required this.title,
      required this.artist,
      required this.duration,
      required this.releaseDate,
      required this.cover_url});
}
