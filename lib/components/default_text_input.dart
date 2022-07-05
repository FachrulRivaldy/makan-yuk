import 'package:flutter/material.dart';
import 'constants.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    this.height = 20,
    this.width = 50,
    this.fontWeight = FontWeight.normal,
    this.textColor = kSecondaryColor,
    this.isObsecure = false,
    required this.hintText,
  }) : super(key: key);

  final double height;
  final double width;
  final String hintText;
  final FontWeight fontWeight;
  final Color textColor;
  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(),
    );
  }
}
