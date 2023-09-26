import 'package:flutter/material.dart';

class OvalRectangle extends StatelessWidget {
  final String txt;
  final double width;
  final double height; 
  final Color colortxt;

  OvalRectangle({required this.txt, required this.width, required this.height, required this.colortxt});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;


    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 156, 215, 228), 
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}