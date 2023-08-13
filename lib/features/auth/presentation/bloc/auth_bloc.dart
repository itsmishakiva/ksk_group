import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ksk_group/features/auth/domain/model/auth_model.dart';

sealed class AuthEvent {}

final class AuthButtonPressedEvent extends AuthEvent {}

class AuthFieldsBloc extends Bloc<AuthEvent, AuthModel> {
  AuthFieldsBloc() : super(const AuthModel(email: '', password: '')) {
    on<AuthButtonPressedEvent>(
      (event, emit) async {
        //TODO send data to UseCaseModule
      },
    );
  }
}
