import 'package:flutter/material.dart';
class costomeloginbotton extends StatelessWidget {
  final IconData icon;
  final String text;
  costomeloginbotton({
    required this.text,
  required this.icon,
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(300,25),backgroundColor: Colors.white
        ),

        onPressed: (){}, child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(icon),Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize:20,)),],))
    ;
  }
}
