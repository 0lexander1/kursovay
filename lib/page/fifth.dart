import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/widget/field.dart';
import 'package:flutter_beginning/page/sixth_page.dart';


class FifthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.1,
                        child: Image.asset("assets/images/Hello.jpg", fit: BoxFit.fill,)
                    ),
                    SizedBox(width: screenWidth * 0.02,),
                    const TextPlace(
                      txt: "Добро пожаловать!",
                      st: FontWeight.bold,
                      align: TextAlign.left,
                      width: 0.8, 
                      height: 0.2, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 32),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                    child : TextPlace(
                      txt: "Войдите, чтобы пользоваться функциями приложения",
                      st: FontWeight.normal, 
                      width: 0.7, 
                      align: TextAlign.left,
                      height: 0.1, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 16)
                    ),
                  ]
                ),
                SizedBox(height: screenHeight * 0.05,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.8, 
                      labtext: "Вход по E-mail",
                      height: 0.1, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "example@mail.ru"
                      )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonPush(
                      size: 16,
                      txt: "Далее", 
                      page: (context) => SixthScreen(),
                      colortxt: const Color.fromARGB(255,255,255,255), 
                      width: 0.8, 
                      height: 0.09, 
                      backgroundColor: const Color.fromARGB(255,26,111,238),
                      )
                   ],
                ),
                SizedBox(height:  screenHeight * 0.25,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextPlace(
                      txt: "Или войдите с помощью",
                      backgroundColor: Colors.white,
                      width: 0.8,
                      align: TextAlign.center,
                      height: 0.05,
                      colortxt: Colors.grey,
                      size: 16,
                      st: FontWeight.normal,
                    )
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonPush(
                      size: 24,
                      page: (context) => FifthScreen(),
                      backgroundColor: Colors.white,
                      width: 0.8,
                      height: 0.1,
                      colortxt: Colors.black,
                      txt: "Войти с Яндекс",
                    )
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