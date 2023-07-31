
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../views/border.dart';
class Qr_View extends StatelessWidget {
  const Qr_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      willChange: true,
      isComplex: true,
      foregroundPainter: BorderPainter(),
      child: DottedBorder(
        color: Colors.black26, //color of dotted/dash line
        strokeWidth: 1, //thickness of dash/dots
        dashPattern: [10, 6],
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: QrImageView(
            data: '1234567890',
            version: QrVersions.auto,
            size: 195.0,
          ),
        ),
      ),
    );
  }
}
