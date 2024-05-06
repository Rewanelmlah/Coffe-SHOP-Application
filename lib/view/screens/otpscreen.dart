import 'package:coffe_shop_app/view/screens/resrtpassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otpverify extends StatelessWidget {
  const otpverify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Color(0xff8A451B),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(

      body:
      Column(
        children: [
          Expanded(
            child: Stack(

              children: [Container(
              padding: EdgeInsets.all(40),
              height: 240,
              width: double.infinity,
              color: Color(0xff8A451B),
              child:
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Verification",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),)),

              ),
                SingleChildScrollView(

                  child: Container(
                    margin: EdgeInsets.only(top: 200),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                    ),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 40),
                            child: const Text(
                              "Enter the code sent to your email",
                              style: TextStyle(
                                color: Color(0xff8A451B),
                                fontSize: 18,
                              ),
                            ),
                          ),

                          Pinput(
                            length: 5,
                            defaultPinTheme: defaultPinTheme,
                            focusedPinTheme: defaultPinTheme.copyWith(
                              decoration: defaultPinTheme.decoration!.copyWith(
                                border: Border.all(color: Color(0xff8A451B)),
                              ),
                            ),
                            onCompleted: (pin) => debugPrint(pin),
                          ),
                          SizedBox(height:50,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(250, 25),
                                backgroundColor: Color(0xff8A451B),
                              ),
                              onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>resetpassword(),));}, child: Text('Reset Password',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
