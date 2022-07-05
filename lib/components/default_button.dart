import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, this.text, this.press}) : super(key: key);

  final String? text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        child: Text(text!),
        onPressed: press!,
      ),
    );
  }
}
