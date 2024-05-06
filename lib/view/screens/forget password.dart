import 'package:coffe_shop_app/view/screens/login.dart';
import 'package:coffe_shop_app/view/screens/otpscreen.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboardingwidgets/custometextbox.dart';
class forgetpassword extends StatefulWidget {
  const forgetpassword({super.key});

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: [
      Expanded(
      child: Stack(
      children: [
          Container(
          padding: EdgeInsets.all(40),
      height: 240,
      width: double.infinity,
      color: Color(0xff8A451B),
      child:
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("Forget Password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),)),

    ),
    Container(
    margin: EdgeInsets.only(top: 210),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
    ),
    padding: EdgeInsets.all(10),
    width: double.infinity,
    child:SingleChildScrollView(
    child: Form(
    child:Column(

    children: [
    SizedBox(height: 40,),
    Text("Don't Worry! It Happens. Please Enter \n Email Associated With Your Account",style: TextStyle(fontSize: 18,color: Color(0xff8A451B)),),
    SizedBox(height:70,),
    custometextfield(
    obscuretext: false,
    labelText: "Email",
    hintText: "Enter Your Email Address",
    prefixIcon: Icons.email_rounded,
    ),
    SizedBox(height: 40,),

    ElevatedButton(
    style: ElevatedButton.styleFrom(
    fixedSize: Size(200, 25),
    backgroundColor: Color(0xff8A451B),
    ),
    onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>otpverify(),));}, child: Text('Send Code',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
     SizedBox(height:250 ,),
      Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(" Remember Pasword?  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
          SizedBox(width:5,),
          TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>login(),));
          }, child: Text("Log In",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Color(0xff8A451B)),))
        ],),
  ],
    ),
    ),
    ),
    ),
      ]
      ),
      ),
          ]
      ),
    );
  }
}
