

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.verified_rounded),
          SizedBox(
            width: 2,
          ),
          Text(
            "Done",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ]),
        style: ElevatedButton.styleFrom(primary: Colors.green),
      ),
    );
  }
}
