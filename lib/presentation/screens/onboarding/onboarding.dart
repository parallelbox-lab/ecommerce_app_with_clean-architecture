import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  final List<Map<String, String>> _onboardingData = [{
    "image":"assets/goldclothings-20181113-0002.jpg",
    "text":"We provide high quality products just for you"
  },
  {
   "image":"assets/goldclothings-20181113-0002.jpg",
    "text":"We provide high quality products just for you"
  },
   {
   "image":"assets/goldclothings-20181113-0002.jpg",
    "text":"We provide high quality products just for you"
  },
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child:Column(
        children: [
          Expanded(child:
             PageView.builder(
              itemCount:_onboardingData.length ,
              itemBuilder: (context, i){
              return  Column(children: [
                  Image.asset(_onboardingData[i]["image"]!)
                ]
              );
             })         
          )
       ])  
      ),
    );
  }
}
