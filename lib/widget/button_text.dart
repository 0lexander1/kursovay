import 'package:flutter/material.dart';
import 'package:flutter_beginning/page/fourth_page.dart';

class ButtonText extends StatelessWidget {
  final String txt;
  final Color backgroundColor;
  final double width;
  final double height; 
  final Color colortxt;

  ButtonText({required this.txt, required this.width, required this.height, required this.backgroundColor, required this.colortxt});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;


   
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FourthScreen(), 
          ),
        );
        },
       child: Text(txt), // Текст на кнопке
          style: TextButton.styleFrom(
          minimumSize: Size(rectangleWidth, rectangleHeight),
          backgroundColor: backgroundColor,
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
       ),
    );
  }
}