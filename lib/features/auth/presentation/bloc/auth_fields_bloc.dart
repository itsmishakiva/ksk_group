import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ksk_group/features/auth/domain/model/auth_model.dart';

sealed class AuthFieldsEvent {
  abstract String value;
}

final class AuthLoginChangedEvent extends AuthFieldsEvent {
  AuthLoginChangedEvent(this.value);

  @override
  String value;
}

final class AuthPasswordChangedEvent extends AuthFieldsEvent {
  AuthPasswordChangedEvent(this.value);

  @override
  String value;
}

class AuthFieldsBloc extends Bloc<AuthFieldsEvent, AuthModel> {
  AuthFieldsBloc() : super(const AuthModel(email: '', password: '')) {
    on<AuthLoginChangedEvent>(
      (event, emit) {
        emit(state.copyWith(email: event.value));
      },
    );
    on<AuthPasswordChangedEvent>(
      (event, emit) {
        emit(state.copyWith(password: event.value));
      },
    );
  }
}
