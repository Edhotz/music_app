import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_app/domain/entities/song/song.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releaseDate;
  String? cover_url;

  SongModel(
      {required this.title,
      required this.artist,
      required this.duration,
      required this.releaseDate,
      this.cover_url});

  SongModel.fromJson(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
    cover_url = data['cover_url'];
  }
}

extension SongModelX on SongModel {
  SongsEntity toEntity() {
    return SongsEntity(
        title: title!,
        artist: artist!,
        duration: duration!,
        releaseDate: releaseDate!,
        cover_url: cover_url!);
  }
}
