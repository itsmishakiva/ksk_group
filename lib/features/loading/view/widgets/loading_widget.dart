import 'package:flutter/material.dart';
import 'package:ksk_group/features/loading/view/widgets/loading_painter.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController =
      AnimationController(vsync: this, upperBound: 8, lowerBound: 0);

  @override
  void initState() {
    super.initState();
    animationController.repeat(
      min: 0,
      max: 8,
      reverse: false,
      period: const Duration(milliseconds: 1200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return CustomPaint(
          painter: LoadingPainter(start: animationController.value),
        );
      },
    );
  }
}
