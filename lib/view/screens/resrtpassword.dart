import 'package:coffe_shop_app/view/screens/login.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboardingwidgets/custometextbox.dart';
class resetpassword extends StatefulWidget {
  const resetpassword({super.key});

  @override
  State<resetpassword> createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
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
                          child: Text("Reset Password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),)),

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
                              Text("Write Your New Password",style: TextStyle(fontSize: 18,color: Color(0xff8A451B)),),
                              SizedBox(height:70,),
                              custometextfield(
                                obscuretext: true,
                                labelText: "New Password",
                                hintText: "Enter Your New Password",
                                prefixIcon: Icons.remove_red_eye,
                              ),
                              SizedBox(height: 40,),
                              custometextfield(
                                obscuretext: true,
                                labelText: " Confirm New Password",
                                hintText: "Enter Your New Password Again",
                                prefixIcon: Icons.remove_red_eye,
                              ),
                              SizedBox(height: 50,),

                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(250, 25),
                                    backgroundColor: Color(0xff8A451B),
                                  ),
                                  onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>login(),));}, child: Text('Reset Password',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                              SizedBox(height:250 ,),

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
