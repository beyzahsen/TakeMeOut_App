import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:take_me_out_app/pages/homepage.dart';

void main() => runApp(const TakeMeOutApp());

class TakeMeOutApp extends StatelessWidget {
  const TakeMeOutApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Take Me Out',
      theme: ThemeData.light().copyWith(
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.blue),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}
