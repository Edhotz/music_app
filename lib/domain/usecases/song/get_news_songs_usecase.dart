import 'package:dartz/dartz.dart';
import 'package:music_app/core/usecase/usecase.dart';
import 'package:music_app/data/repository/song/song_repository_impl.dart';
import 'package:music_app/service_locator.dart';

class GetNewsSongsUseCase implements Usecase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongRepositoryImpl>().getNewsSongs();
  }
}
