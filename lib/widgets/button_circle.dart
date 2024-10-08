import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onPressed;

  const ButtonCircle({super.key,
    required this.imagePath,
    this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder()),
        child: ClipOval(
          child: Image.asset(imagePath, width: 40.0, height: 40.0, fit: BoxFit.cover,),
        ));
  }
}
