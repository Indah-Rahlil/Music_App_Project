import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String hintText;
  final Color bgColor;
  final VoidCallback? onPressed;

  const MyButton({super.key,
    required this.hintText,
    required this.bgColor,
    this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {},
        child: Text(hintText, style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 13, color: Colors.white), textAlign: TextAlign.center,),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
      ),
    );
  }
}
