import 'package:dartz/dartz.dart';
import 'package:music_app/data/models/auth/create_user.req.dart';
import 'package:music_app/data/models/auth/signin_user_req.dart';
import 'package:music_app/data/sources/auth/auth_firebase_service.dart';
import 'package:music_app/domain/repositories/auth/auth.dart';
import 'package:music_app/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await sl<AuthFirebaseService>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }
}
