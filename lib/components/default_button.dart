import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      this.text = "Button",
      required this.dest,
      this.width = 250,
      this.height = 50})
      : super(key: key);

  final double width;
  final double height;
  final String text;
  final Widget dest;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: width,
      height: height,
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kSecondaryColor,
            elevation: 5,
            fixedSize: Size(width, height)),
        child: Text(
          text,
          style: kButtonText,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => dest));
        },
      ),
    );
  }
}
