import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final Color backgroundColor;
  final double width;
  final double height; 
  final Color colortxt;
  final Widget Function(BuildContext) page;

 

  Button({required this.txt, required this.page, required this.width, required this.height, required this.backgroundColor, required this.colortxt});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;


   
    return ElevatedButton(
      onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: page, 
          ),
        );
        },
       child: Text(txt), // Текст на кнопке
          style:  ElevatedButton.styleFrom(
          minimumSize: Size(rectangleWidth, rectangleHeight),
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
       ),
    );
  }
}