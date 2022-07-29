import 'package:ecommerce_app_with_clean_architecture/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SigninMethod extends StatelessWidget {
  const SigninMethod({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading:const BackButton(),
      // ),
      body: ListView(children: [
        
        Container(
          padding:const EdgeInsets.only(top:25,left:17),
          alignment: Alignment.topLeft,
          child: const BackButton()),
        Center(child: Image.asset("assets/draw.png",width:200),
        ),
        const  SizedBox(height: 20,),
        const SizedBox(height:25),
        CustomText(text: "Let's you in",textAlign: TextAlign.center,size: 17.sp,),
        Container(
          margin:const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(8.0),
            ),
            border: Border.all(color:Colors.grey),
          ),
          child: Row(
            children: [
              const Icon(Icons.facebook),
              CustomText(text: "Continue with Facebook",size:11.sp),
            ],
          ),
          
        ),
         Container(
          margin:const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(8.0),
            ),
            border: Border.all(color:Colors.grey),
          ),
          child: Row(
            children: [
              const Icon(Icons.facebook),
              CustomText(text: "Continue with Facebook",size:11.sp,),
            ],
          ),
          
        ),
         Container(
          margin:const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(8.0),
            ),
            border: Border.all(color:Colors.grey),
          ),
          child: Row(
            children: [
              const Icon(Icons.facebook),
              CustomText(text: "Continue with Facebook",size:11.sp),
            ],
          ),
          
        )
      ],),
    );
  }
}