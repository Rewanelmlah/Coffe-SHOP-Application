import 'package:coffe_shop_app/view/screens/firstscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/photo_2024-05-04_16-37-32.jpg'),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              SizedBox(height: 770,),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(250, 25),
                      backgroundColor: Color(0xff8A451B),
                    ),
                    onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>firstscreen(),));}, child: Text('Get Started',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ],
          ),
            
        
        ),
      ),

    );
  }
}
