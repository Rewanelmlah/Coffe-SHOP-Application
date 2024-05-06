import 'package:coffe_shop_app/view/screens/home.dart';
import 'package:coffe_shop_app/view/screens/login.dart';
import 'package:coffe_shop_app/widgets/onboardingwidgets/custometextbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class signup extends StatefulWidget {
  const signup ({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
                          child: Align(
                            alignment: Alignment.bottomLeft,
                              child: Text("Sign Up",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),)),
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
                                                      Text("Create Your Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff8A451B)),),
                                                      SizedBox(height:40,),
                                                        custometextfield(
                                                          obscuretext: false,
                                                          labelText: "Name",
                                                          hintText: "Enter Your Name",
                                                          prefixIcon: Icons.person,
                                                        ),
                                                      SizedBox(height: 30,),
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
                                                      custometextfield(
                                                        obscuretext: true,
                                                        labelText: "Confirm Password",
                                                        hintText: "Enter Your Password Again",
                                                        prefixIcon: Icons.remove_red_eye,
                                                      ),
                                                        SizedBox(height: 30,),
                                                      ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                          fixedSize: Size(200, 25),
                                                          backgroundColor: Color(0xff8A451B),
                                                        ),
                                                          onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>homepage(),));}, child: Text('Sign Up',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                        SizedBox(height: 20,),
                                                        Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                                            
                                                          Text("Already Have An Account ? ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                                          TextButton(onPressed: (){
                                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>login(),));
                                                          }, child: Text("Log In",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Color(0xff8A451B)),))
                                                        ],
                                                      ),
                                                    ],),
                                              ),
                                  ),
                                            ),
                                  
                                  
                            
                            
                           
          
                        ]),),]),
        );}}
