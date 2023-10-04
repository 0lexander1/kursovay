import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class NinthScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('Verification')),
body: Center(
child: Column(
children: [
SizedBox(height: 20),
Text(
'Введите код, отправленный на вашу почту',
style: TextStyle(fontSize: 16),
),
SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
VerificationCodeCell(),
VerificationCodeCell(),
VerificationCodeCell(),
VerificationCodeCell(),
],
),
SizedBox(height: 20),
ElevatedButton(
onPressed: () {
// Действия при нажатии на кнопку "Подтвердить"
},
child: Text('Подтвердить'),
),
],
),
),
);
}
}

class VerificationCodeCell extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Container(
margin: EdgeInsets.symmetric(horizontal: 8),
width: 50,
height: 50,
decoration: BoxDecoration(
border: Border.all(color: Colors.grey),
borderRadius: BorderRadius.circular(8),
),
child: TextField(
maxLength: 1,
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20),
keyboardType: TextInputType.number,
decoration: InputDecoration(
border: InputBorder.none,
),
),
);
}
}