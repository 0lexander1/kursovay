import 'package:flutter/material.dart';
import 'package:flutter_beginning/widget/button.dart';
import 'package:flutter_beginning/page/first_page.dart';
import 'package:flutter_beginning/widget/text_place.dart';
import 'package:flutter_beginning/widget/field.dart';
import 'package:flutter_beginning/page/fifth_page.dart';
import 'package:flutter_beginning/widget/button_text.dart';
import 'package:flutter_beginning/page/eighth_page.dart';


class SeventhScreen extends StatefulWidget {
  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  TextEditingController _emailController = TextEditingController();
  bool _isButtonEnabled = false;


  @override
    void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextPlace(
                      txt: "Создание карты пациента",
                      st: FontWeight.bold,
                      align: TextAlign.left,
                      width: 0.7, 
                      height: 0.15, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.black, 
                      size: 30),
                      ButtonText(
                        page: (context) => EighthScreen(),
                        txt: "Пропустить", 
                        width: 0.15,
                        height: 0.1, 
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255), 
                        colortxt: Colors.blue
                      )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      TextPlace(
                      txt: "Без карты пациента вы не сможете заказать анализы.",
                      st: FontWeight.normal, 
                      width: 0.8, 
                      align: TextAlign.left,
                      height: 0.08, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.grey, 
                      size: 16)
                      ]
                    ),
                  const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      TextPlace(
                      txt: "В картах пациентов будут храниться результаты анализов вас и ваших близких.",
                      st: FontWeight.normal, 
                      width: 0.8, 
                      align: TextAlign.left,
                      height: 0.08, 
                      backgroundColor: Colors.white, 
                      colortxt: Colors.grey, 
                      size: 16)
                      ]
                    ),
                SizedBox(height: screenHeight * 0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Имя",
                      height: 0.08, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "Дмитрий",
                      onChange: (value) {
                        setState(() {
                          _isButtonEnabled = value.isNotEmpty;
                        });
                      },
                      controller: _emailController,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Фамилия",
                      height: 0.08, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "Ларкин",
                      onChange: (value) {
                        setState(() {
                          _isButtonEnabled = value.isNotEmpty;
                        });
                      },
                      controller: _emailController,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Отчество",
                      height: 0.08, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "Михайлович",
                      onChange: (value) {
                        setState(() {
                          _isButtonEnabled = value.isNotEmpty;
                        });
                      },
                      controller: _emailController,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Field(
                      width: 0.9, 
                      labtext: "Дата рождения",
                      height: 0.08, 
                      colortxt: Colors.black45, 
                      mode: false, 
                      hinttxt: "24 ноября 2003",
                      onChange: (value) {
                        setState(() {
                          _isButtonEnabled = value.isNotEmpty;
                        });
                      },
                      controller: _emailController,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonPush(
                      isEnabled: _isButtonEnabled ,
                      size: 16,
                      txt: "Создать", 
                      page: (context) => FifthScreen(),
                      colortxt: const Color.fromARGB(255, 255, 255, 255), 
                      width: 0.8, 
                      height: 0.09, 
                      backgroundColor: _isButtonEnabled
                          ? const Color.fromARGB(255,26,111,238) // Цвет активной кнопки
                          : const Color.fromARGB(255, 13, 33, 105),
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
