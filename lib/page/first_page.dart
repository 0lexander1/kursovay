import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/oval_rectangle.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/widget/button_text.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/page/second_page.dart';

class FirstScreen extends StatelessWidget {
  final String butSkeep = "Пропустить";
  final String txt = "Анализы";
  final String txt2 = "Экспресс сбор и получение проб";
  
  
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonText(
                      txt: butSkeep, 
                      width: 0.4,
                      height: 0.1, 
                      backgroundColor: Color.fromARGB(0, 255, 255, 255), 
                      colortxt: Colors.blue
                      ),
                      SizedBox(width: screenWidth * 0.1,),
                    OvalRectangle(
                      txt: 'Д_Д', 
                      width: 0.5, 
                      height: 0.25, 
                      colortxt: Color.fromARGB(255, 255, 255, 255),
                      ), 
                  ],
                ),
                SizedBox(height: screenHeight * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextPlace(
                      txt: txt, 
                      size: 24,
                      st: FontWeight.bold,
                      backgroundColor: Color.fromARGB(0, 255, 255, 255),
                      colortxt: Colors.green,
                      width: 0.9,
                      height: 0.06,
                    ),
                  ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextPlace(
                      txt: txt2, 
                      size: 16,
                      st: FontWeight.normal,
                      backgroundColor: Color.fromARGB(0, 255, 255, 255),
                      colortxt: Colors.grey,
                      width: 0.9,
                      height: 0.08,
                    ),
                  ],
                  ),
                SizedBox(height: screenHeight * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      txt: "Дальше", 
                      page: (context) => SecondScreen(),
                      colortxt: Color.fromARGB(255, 255, 255, 255), 
                      width: 0.4, height: 0.09, 
                      backgroundColor: Color.fromARGB(255, 105, 220, 220),
                      )
                  ],
                ),
                SizedBox(height: screenHeight * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   OvalRectangle(
                      txt: 'Д_Д', 
                      width: 0.6, 
                      height: 0.3, 
                      colortxt: Color.fromARGB(255, 255, 255, 255),
                    ), 
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}