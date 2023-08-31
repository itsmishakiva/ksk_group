import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BouncingButton extends StatefulWidget {
  final Function func;

  BouncingButton({required this.func});

  @override
  BouncingButtonState createState() => BouncingButtonState();
}

class BouncingButtonState extends State<BouncingButton>
    with SingleTickerProviderStateMixin {
  late double scale;
  late AnimationController controller;
  Duration duration = const Duration(milliseconds: 400);

  @override
  void initState() {
    controller = AnimationController(
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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.animateTo(controller.upperBound, duration: Duration.zero);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTapCancel: () {
          controller.animateTo(controller.upperBound);
        },
        onTapDown: (TapDownDetails details) {
          controller.animateTo(controller.lowerBound);
          widget.func();
          controller.addListener;
        },
        onTapUp: (TapUpDetails details) {
          controller.animateTo(controller.upperBound);
        },
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform.scale(
              scale: controller.value,
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
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Color(0xFF276AA7),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            height: 60,
            width: 323,
            child: Center(
              child: Text(
                "Войти",
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

/*onTap: (){
          controller.animateTo(controller.lowerBound);
          Future.delayed(duration, () {
            controller.animateTo(controller.upperBound);
          });
          func();
        },*/
