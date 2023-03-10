import 'package:flutter/material.dart';

//uygulama genelinde tasarım değişiklerini tek bir yerden ele almak için
//widgetlar içinde ProjectStyles.titleStyle gibi erişilebilir.
class ProjectStyles {
  static const TextStyle titleStyle = TextStyle(fontSize: 40, color: Color.fromARGB(208, 157, 124, 207), fontWeight: FontWeight.bold, fontFamily: 'Oswald');
  static const TextStyle navigationTextStyle = TextStyle(fontSize: 20);
  static const TextStyle resultTextStyle = TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold);
  static const TextStyle newsCardBottomDetails = TextStyle(fontSize: 15, color: Colors.black);
  static const TextStyle newsDetailsTitle = TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold);
  static const TextStyle newsDetailsDetail = TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400);
}

class ProjectColors {
  static const Color splashColor = Color.fromARGB(255, 109, 97, 215);
  static Color cardBackgroundColor = const Color.fromARGB(255, 239, 237, 237);
  static Color scaffoldBackgroundColor = Colors.white;
  static Color iconBlackColor = Colors.white;
  static Color labelColor = Colors.purple;
  static Color iconTextColorLight = Colors.white;
  static Color elevatedButtonColorDark = Colors.black54;
  static Color textColorBlack = Color.fromARGB(255, 76, 94, 173);
  static Color iconRedColor = Colors.red;
}