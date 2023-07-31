import 'package:barcode/barcode.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../views/border.dart';
class Barcode_Container extends StatelessWidget {
  const Barcode_Container({
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
          width: 235,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildBarcode(
              Barcode.code93(),
              'CODE 93',
            ),
          ),
        ),
      ),
    );
  }
}


Widget buildBarcode(Barcode barcode, String data, {double height = 80.0}) {
  // Generate barcode using the given data and barcode type
  final svgBarcode = barcode.toSvg(data);

  // Return a widget to display the barcode
  return SizedBox(
    height: height,
    child: SvgPicture.string(svgBarcode),
  );
}