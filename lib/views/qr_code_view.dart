import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/barcodewidget.dart';
import '../widgets/button.dart';
import '../widgets/circles.dart';
import '../widgets/qr_view.dart';

class Qr_Code_Design extends StatefulWidget {
  const Qr_Code_Design({super.key});
  @override
  State<Qr_Code_Design> createState() => _Qr_Code_DesignState();
}

class _Qr_Code_DesignState extends State<Qr_Code_Design> {
  GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                DottedBorder(
                  color: Colors.white,
                  strokeWidth: 50,
                  dashPattern: [20, 5, 0, 0],
                  strokeCap: StrokeCap.butt,
                  borderType: BorderType.Rect,
                  child: Container(
                    width: 320,
                    height: 700,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Redeem 2000 Points for 20 JD",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 2,
                          width: 260,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Qr_View(),
                        Barcode_Container(),
                        SizedBox(
                          height: 83,
                        ),
                        Button(),
                      ],
                    ),
                  ),
                ),
                Circles(
                  top: 100,
                  left: -10,
                ),
                Circles(
                  top: 500,
                  left: -10,
                ),
                Circles(
                  top: 100,
                  right: -10,
                ),
                Circles(
                  top: 500,
                  right: -10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
