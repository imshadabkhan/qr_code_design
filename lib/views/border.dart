import 'package:flutter/material.dart';

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.15; // desirable value for corners side

    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    // Path path = Path()
    //   ..moveTo(cornerSide, 0)
    //   ..quadraticBezierTo(0, 0, 0, cornerSide)
    //   ..moveTo(0, sh - cornerSide)
    //   ..quadraticBezierTo(0, sh, cornerSide, sh)
    //   ..moveTo(sw - cornerSide, sh)
    //   ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
    //   ..moveTo(sw, cornerSide)
    //   ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);
    //
    // canvas.drawPath(path, paint);

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..lineTo(0, 0)
      ..lineTo(0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..lineTo(0, sh)
      ..lineTo(cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..lineTo(sw, sh)
      ..lineTo(sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..lineTo(sw, 0)
      ..lineTo(sw - cornerSide, 0);

    canvas.drawPath(path, paint);



  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}