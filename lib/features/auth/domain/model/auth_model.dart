import 'package:flutter/material.dart';

@immutable
class AuthModel {
  final String email;
  final String password;

  const AuthModel({
    required this.email,
    required this.password,
  });

  AuthModel copyWith({
    String? email,
    String? password,
  }) {
    return AuthModel(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
