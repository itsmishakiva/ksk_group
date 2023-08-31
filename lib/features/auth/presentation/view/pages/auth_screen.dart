import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/widgets/BounceButton.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/widgets/CustomTextfield.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/widgets/WaveClipper.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF276AA7),
        body: Column(
          children: [
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width,
                  (MediaQuery.of(context).size.height * 0.35).toDouble()),
              painter: RPSCustomPainter(),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: SvgPicture.asset(
                  'assets/logo.svg',
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF276AA7), Color(0xFF689BCE)]),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 88, top: 100),
                    child: Text(
                      "Добро пожаловать!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        fontFamily: 'Russo one',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Войдите в свой аккаунт чтоб продолжить",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Strong',
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  CustomTextField(
                    hinttext: "Введите email",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hinttext: "Введите пароль",
                  ),
                  SizedBox(
                    height: 86,
                  ),
                  BouncingButton(func: () {})
                ],
              ),
            ),
          ],
        ));
  }
}
