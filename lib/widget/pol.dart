import 'package:flutter/material.dart';

class Pol extends StatelessWidget {
  final double width;
  final double height;
  final Color colortxt;
  final String labtext;
  final String hinttxt;
  final bool mode;
  final ValueChanged<String>? onChange;
  final TextEditingController? controller;

  const Pol(
      {required this.width,
      this.controller,
      this.onChange,
      required this.labtext,
      required this.height,
      required this.colortxt,
      required this.mode,
      required this.hinttxt});

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
        color: const Color.fromARGB(156, 233, 229, 229),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: SizedBox(
          width: rectangleWidth - 16,
          child: DropdownButtonFormField<String>(
            value: null, // Выбранное значение, начально пусто
            onChanged: (String? newValue) {
              if (onChange != null) {
                onChange!(newValue!);
              }
            },
            items: ['Мужской', 'Женский'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labtext,
              labelStyle: const TextStyle(color: Colors.grey),
              hintText: hinttxt,
              hintStyle: TextStyle(color: colortxt),
            ),
          ),
        ),
      ),
    );
  }
}
