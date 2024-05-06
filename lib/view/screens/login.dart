import 'package:coffe_shop_app/view/screens/forget%20password.dart';
import 'package:coffe_shop_app/view/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboardingwidgets/customeloginbotton.dart';
import '../../widgets/onboardingwidgets/custometextbox.dart';
import 'home.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: [
            Expanded(
              child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      height: 240,
                      width: double.infinity,
                      color: Color(0xff8A451B),
                      child: Column(
                        children: [
                          Align(alignment: Alignment.topLeft,
                              child: IconButton(onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>signup(),));
                              }, icon:Icon(Icons.arrow_back,color: Colors.white,size: 30,))),
                         SizedBox(height: 80,),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Log IN",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),)),
                        ],
                      ),
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
                              SizedBox(height: 20,),
                              Text("Welcome BACK",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff8A451B)),),
                              SizedBox(height:40,),
                              custometextfield(
                                obscuretext: false,
                                labelText: "Email",
                                hintText: "Enter Your Email Address",
                                prefixIcon: Icons.email_rounded,
                              ),
                              SizedBox(height: 30,),
                              custometextfield(
                                obscuretext: true,
                                labelText: "Password",
                                hintText: "Enter Your Password",
                                prefixIcon: Icons.remove_red_eye,
                              ),

                              SizedBox(height: 30,),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    isChecked= !isChecked;
                                  });
                                },
                                child: Expanded(
                                  child: Row(
                                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(width: 15,height: 15,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.brown.shade900)
                                      ),
                                        child: isChecked? Icon(Icons.check,color: Color(0xff8A451B),size: 13,):null
                                      ),
                                      SizedBox(width: 3,),
                                      Text(" Remember Me ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff8A451B)),),
                                      SizedBox(width: 90,),
                                      TextButton(onPressed: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>forgetpassword(),));
                                      }, child: Text("Forget Password ?",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Colors.red),))
                                    ],),),),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(200, 25),
                                    backgroundColor: Color(0xff8A451B),
                                  ),
                                  onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>homepage(),));}, child: Text('Log IN',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                              SizedBox(height: 30,),

                              Text("OR",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),


                              SizedBox(height: 10,),

                              costomeloginbotton(
                                text: "Continue With Facebook",
                                icon: Icons.facebook,
                              ),
                              SizedBox(height: 10,),
                              costomeloginbotton(text: 'Continue With Google', icon:Icons.account_circle)

                            ],),
                        ),
                      ),
                    ),






                  ]),),]),
    );}}
