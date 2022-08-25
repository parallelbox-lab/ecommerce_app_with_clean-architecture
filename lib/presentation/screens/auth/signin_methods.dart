import 'package:ecommerce_app_with_clean_architecture/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SigninMethod extends StatelessWidget {
  const SigninMethod({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:Container(
          margin: const EdgeInsets.only(top:10,left:15,right:10),
          // padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(width: 3)
          ),
          child: const BackButton(color:Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(children: [ 
        // Container(
        //   padding:const EdgeInsets.only(top:15,left:17),
        //   alignment: Alignment.topLeft,
        //   child: const BackButton()),
        Center(child: Image.asset("assets/draw.png",
        width:200,
        height: MediaQuery.of(context).size.height * 0.25,
        ),
          ),
        
        const  SizedBox(height: 20,),
        const SizedBox(height:25),
        CustomText(text: "Let's you in",textAlign: TextAlign.center,size: 17.sp,),
        Container(
          margin:const EdgeInsets.fromLTRB(15,25,25,10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(8.0),
            ),
            border: Border.all(color:Colors.grey),
          ),
          child: Row(
            children: [
              const Icon(Icons.facebook),
              const SizedBox(width: 15,),
              CustomText(text: "Continue with Facebook",size:11.sp),
            ],
          ),
          
        ),
         Container(
          margin:const EdgeInsets.fromLTRB(15,10,25,10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(8.0),
            ),
            border: Border.all(color:Colors.grey),
          ),
          child: Row(
            children: [
              const Icon(Icons.facebook),
              const SizedBox(width: 15,),
              CustomText(text: "Continue with Facebook",size:11.sp,),
            ],
          ),
          
        ),
         Container(
          margin:const EdgeInsets.fromLTRB(15,10,25,10),
          padding: const EdgeInsets.all(10),          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(8.0),
            ),
            border: Border.all(color:Colors.grey),
          ),
          child: Row(
            children: [
              const Icon(Icons.facebook),
              const SizedBox(width: 15,),
              CustomText(text: "Continue with Facebook",size:11.sp),
            ],
          ),   
        ),
        const SizedBox(height:10),
        CustomText(text: "OR",weight:FontWeight.bold,size: 20.sp,textAlign: TextAlign.center,),
        Container(
          alignment: Alignment.bottomCenter,
          margin:const EdgeInsets.fromLTRB(15,15,25,10),
          padding: const EdgeInsets.all(10),
          decoration:const BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(8.0),
            ),
            color: Colors.purple
          ),
          child: 
              CustomText(text: "Signup by Creating Account",size:11.sp,color:Colors.white),
        ),
      ],),
    );
  }
}