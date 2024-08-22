import 'package:get_it/get_it.dart';
import 'package:music_app/data/repository/auth/auth_repository_impl.dart';
import 'package:music_app/data/repository/song/song_repository_impl.dart';
import 'package:music_app/data/sources/auth/auth_firebase_service.dart';
import 'package:music_app/data/sources/songs/song_firebase_service.dart';
import 'package:music_app/domain/repositories/auth/auth.dart';
import 'package:music_app/domain/repositories/song/song.dart';
import 'package:music_app/domain/usecases/auth/signin_usecase.dart';
import 'package:music_app/domain/usecases/auth/signup_usecase.dart';
import 'package:music_app/domain/usecases/song/get_news_songs_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services Singleton Register
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());

  // Repository Singleton Register
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerFactory<SongRepository>(() => SongRepositoryImpl(sl()));

  // UseCases Singleton Register
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
}
