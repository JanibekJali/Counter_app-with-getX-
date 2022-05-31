import 'package:counter_app/pages/getXPage/get_x_main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: MainPage(),
      home: GetXMainPage(),
    );
  }
}
