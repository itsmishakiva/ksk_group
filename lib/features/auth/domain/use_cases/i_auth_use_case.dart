import 'package:ksk_group/features/auth/domain/model/auth_model.dart';

abstract interface class IAuthUseCase {
  Future<String> auth(AuthModel authModel);
}
