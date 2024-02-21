import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Whatsapp Clone",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xff065E52),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff01C851),
        )),
  ));
}
