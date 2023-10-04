import 'package:flutter/material.dart';


class CodeInput extends StatefulWidget {
  @override
  _CodeInputState createState() => _CodeInputState();
}

class _CodeInputState extends State<CodeInput> {
  List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {

    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 4; i++)
          Container(
            width: screenWidth * 0.12,
            height: screenHeight * 0.08,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(10.0),
              ),
            child: TextField(
              controller: controllers[i],
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              maxLength: 1,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                counterText:"",
                border: InputBorder.none,
              ),
            ),
          ),
      ],
    );
  }
}