import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/domain/usecases/song/get_news_songs_usecase.dart';
import 'package:music_app/presentation/home/bloc/news_songs_state.dart';
import 'package:music_app/service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());

  Future<void> getNewsSongs() async {
    var returnedSongs = await sl<GetNewsSongsUseCase>().call();

    returnedSongs.fold((l) {
      emit(NewsSongsLoadFailure());
    }, (data) {
      emit(NewsSongsLoaded(songs: data));
      print(data);
    });
  }
}
