import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextStyle labelStyle;
  final bool obscureText;
  final TextEditingController textController;

  const MyTextField({super.key,
    required this.hintText,
    this.labelStyle = const TextStyle(color: Color(0xff6d6d6d) , fontSize: 12, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400,),
    required this.obscureText,
    required this.textController
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3), borderSide: BorderSide.none,),
        filled: true,
        fillColor: Colors.grey[200],
        labelText: hintText,
        labelStyle: labelStyle,
      ),
    );
  }
}
