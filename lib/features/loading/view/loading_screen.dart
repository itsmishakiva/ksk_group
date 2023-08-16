import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ksk_group/features/loading/view/widgets/loading_painter.dart';
import 'package:ksk_group/features/loading/view/widgets/loading_widget.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF205686),
                Color(0xFF5187B8),
              ],
            ),
          ),
          child: const Center(
            child: LoadingWidget(),
          ),
        ),
      ),
    );
  }
}
