import 'package:flutter/material.dart';
class Circles extends StatelessWidget {
  Circles({this.top, this.left, this.right, this.bottom});
  double? top;
  double? left;
  double? right;
  double? bottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.grey,
        ));
  }
}