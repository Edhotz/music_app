import 'package:dartz/dartz.dart';
import 'package:music_app/core/usecase/usecase.dart';
import 'package:music_app/data/models/auth/signin_user_req.dart';
import 'package:music_app/domain/repositories/auth/auth.dart';
import 'package:music_app/service_locator.dart';

class SignInUseCase implements Usecase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) {
    return sl<AuthRepository>().signin(params!);
  }
}
