import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFFA6382E),
      ),
      home: WellcomePage(),
    );
  }
}
