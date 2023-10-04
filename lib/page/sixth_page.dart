import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/back.dart';
import 'package:flutter_beginning/page/fifth.dart';
import 'package:flutter_beginning/widget/code.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/widget/timer_text.dart';

class SixthScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Back(
                    width: 0.1,
                    height: 0.1, 
                    page: (context) => FifthScreen())
                  ],
                ),
                SizedBox(height: screenHeight * 0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextPlace(
                      txt: "Введите код из Email", 
                      align: TextAlign.center, 
                      st: FontWeight.bold, 
                      width: 0.8, 
                      height: 0.2, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 24)
                  ],
                ),
                SizedBox(height: screenHeight * 0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CodeInput()
                  ],
                ),
                SizedBox(height: screenHeight * 0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TimerText(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}