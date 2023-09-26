import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/page/first_page.dart';

class FourthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      txt: "Назад", 
                      page: (context) => FirstScreen(),
                      colortxt: Color.fromARGB(255, 255, 255, 255), 
                      width: 0.4, height: 0.09, 
                      backgroundColor: Color.fromARGB(255, 105, 220, 220),
                      )
                   ],
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}