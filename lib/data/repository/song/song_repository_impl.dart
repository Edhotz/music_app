import 'package:dartz/dartz.dart';
import 'package:music_app/data/sources/songs/song_firebase_service.dart';
import 'package:music_app/domain/repositories/song/song.dart';

class SongRepositoryImpl extends SongRepository {
  final SongFirebaseService _songFirebaseService;

  SongRepositoryImpl(this._songFirebaseService);

  @override
  Future<Either> getNewsSongs() async {
    return await _songFirebaseService.getNewsSongs();
  }
}
