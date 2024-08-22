import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:music_app/data/models/song/song.dart';
import 'package:music_app/domain/entities/song/song.dart';

abstract class SongFirebaseService {
  Future<Either> getNewsSongs();
}

class SongFirebaseServiceImpl extends SongFirebaseService {
  @override
  Future<Either> getNewsSongs() async {
    try {
      List<SongsEntity> songs = [];
      var data = await FirebaseFirestore.instance
          .collection('Songs')
          .orderBy('releaseDate', descending: true)
          .limit(3)
          .get();

      for (var element in data.docs) {
        var songModel = SongModel.fromJson(element.data());

        songs.add(songModel.toEntity());
      }

      return Right(songs);
    } catch (e) {
      return const Left('An error occurred, Please try again');
    }
  }
}
