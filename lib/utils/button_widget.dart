import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.text, this.press}) : super(key: key);
  final String? text;
  final Function? press;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: 55.0,
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              primary: Colors.white,
              backgroundColor: Colors.black,
            ),
            onPressed: press as void Function()?,
            child: Text(text!,
                style: TextStyle(
                    fontFamily: 'Core Pro',
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                textAlign: TextAlign.center)));
  }
}
