import 'package:flutter/material.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/widgets/bounce_button.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/widgets/app_textfield.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF276AA7),
        body: Column(
          children: [
           const CustomPaint(
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: AlignmentDirectional(0.3, -0.4),
                    end: AlignmentDirectional(0.3, 1.5),
                    colors: [Color(0xFF276AA7), Color(0xFF689BCE)],),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 88, top: 100),
                    child: Text(
                      'Добро пожаловать!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        fontFamily: 'Russo one',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Войдите в свой аккаунт чтоб продолжить',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Strong',
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const CustomTextField(
                    hintText: 'Введите email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'Введите пароль',
                  ),
                  const SizedBox(
                    height: 86,
                  ),
                  BouncingButton(func: () {}),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
