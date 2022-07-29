import 'package:ecommerce_app_with_clean_architecture/presentation/screens/auth/signin_methods.dart';
import 'package:ecommerce_app_with_clean_architecture/utils/button_widget.dart';
import 'package:ecommerce_app_with_clean_architecture/utils/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/goldclothings-20181113-0002.jpg",
      "text": "We provide high quality products just for you"
    },
    {
      "image": "assets/goldclothings-20181113-0003.jpg",
      "text": "Your satisfaction is our number one priority"
    },
    {
      "image": "assets/hand.PNG",
      "text": "We provide high quality products just for you"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Expanded(
            flex: 3,
            child: PageView.builder(
                controller: _controller,
                itemCount: _onboardingData.length,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemBuilder: (context, i) {
                  return Column(children: [
                    Expanded(child: Image.asset(_onboardingData[i]["image"]!, height: 400)),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomText(
                        text: _onboardingData[i]["text"],
                        size: 27.sp,
                        weight: FontWeight.bold,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]);
                })),
        // const Spacer(),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    _onboardingData.length, (index) => _buildDots(index)),
              ),
              // const SizedBox(height:15),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ButtonWidget(
                  press: () {
                    _currentPage + 1 == _onboardingData.length
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const SigninMethod()))
                        : _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOut);
                  },
                  text: _currentPage + 1 == _onboardingData.length
                      ? "Get Started"
                      : "Continue",
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ])),
    );
  }

  _buildDots(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.black),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }
}
