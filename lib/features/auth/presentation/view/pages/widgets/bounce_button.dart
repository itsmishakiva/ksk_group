import 'package:flutter/material.dart';

class BouncingButton extends StatefulWidget {
  final Function func;

  const BouncingButton({required this.func, super.key});

  @override
  BouncingButtonState createState() => BouncingButtonState();
}

class BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  static const duration = Duration(milliseconds: 400);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
      reverseDuration: const Duration(
        milliseconds: 400,
      ),
      lowerBound: 0.9,
      upperBound: 1,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.animateTo(animationController.upperBound, duration: Duration.zero);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTapCancel: () {
          animationController.animateTo(animationController.upperBound);
        },
        onTapDown: (TapDownDetails details) {
          animationController.animateTo(animationController.lowerBound);
          widget.func();
          animationController.addListener;
        },
        onTapUp: (TapUpDetails details) {
          animationController.animateTo(animationController.upperBound);
        },
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Transform.scale(
              scale: animationController.value,
              child: child,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              color: const Color(0xFF276AA7),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            height: 60,
            width: 323,
            child: const Center(
              child: Text(
                'Войти',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
