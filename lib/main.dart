import 'package:flutter/material.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/auth_screen.dart';
import 'package:ksk_group/features/loading/view/loading_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthPage(),
    );
  }
}
