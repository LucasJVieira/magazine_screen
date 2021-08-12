import 'package:flutter/material.dart';
import 'package:magalu_screen/core/app_img.dart';
import 'package:magalu_screen/core/core.dart';
import 'package:magalu_screen/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magalu App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
