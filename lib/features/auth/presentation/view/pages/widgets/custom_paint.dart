import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ksk_group/features/auth/presentation/view/pages/widgets/custom_painter.dart';

class CustomPaint extends StatelessWidget {
  const CustomPaint({Key? key, required Size size, required painter, required SizedBox child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
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
    );
  }
}
