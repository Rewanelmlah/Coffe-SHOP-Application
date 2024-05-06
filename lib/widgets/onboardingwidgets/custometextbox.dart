import 'package:flutter/material.dart';
class custometextfield extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final bool obscuretext;
  custometextfield({
   required this.labelText,
    required this.hintText,
    required this.prefixIcon,
     this.obscuretext=false,


});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext,
        decoration:InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xff8A451B)),
            hintText: hintText,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon,color: Color(0xff8A451B),) : null,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff8A451B))
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff8A451B)
                ))));
  }
}
