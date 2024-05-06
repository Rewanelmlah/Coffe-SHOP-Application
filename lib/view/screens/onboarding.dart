import 'package:coffe_shop_app/datasourcestatic/static.dart';
import 'package:coffe_shop_app/view/screens/signup.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex= 0;
  PageController _controller=PageController();
  @override
  void initState(){
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                  itemCount: onBoardingList.length,
                  onPageChanged: (int index){
                  setState(() {
                    currentIndex=index;
                  });
                  },

                  itemBuilder: (_ , i)=> Column(children: [
                    SizedBox(height: 40,),

                    Text(onBoardingList[i].title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xff8A451B)),),
                    SizedBox(height: 80,),
                    Image.asset(onBoardingList[i].image!,height: 250,width: 250,),
                    SizedBox(height: 80,),
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(onBoardingList[i].body!,textAlign: TextAlign.center,style:  TextStyle(height: 2,fontWeight: FontWeight.w700,fontSize: 20,color: Color(0xff8A451B)),)),
                  ],)),
            ),
            Expanded(flex: 1,
                child: Column(
                  children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     ...List.generate(onBoardingList.length, (index) => AnimatedContainer(
                  margin: EdgeInsets.only(right: 5),
                  duration:const Duration(milliseconds: 900),
                  width: 6,height:6 ,
                  decoration: BoxDecoration(color: Color(0xff8A451B),
                      borderRadius: BorderRadius.circular(10)),
                ))
                  ],),
                    Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                height: 40,
                child: MaterialButton(onPressed: (){
                  if(currentIndex==onBoardingList.length - 1 ){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>signup(),)
                    );
                  }
                  _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);

                },
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
                  textColor: Colors.white,
                  child: Text(currentIndex==onBoardingList.length -1 ?"Continue":"Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xff8A451B), ),
              ),

              ],
            ))
          ],
        ),

      ),
    );
  }
}
