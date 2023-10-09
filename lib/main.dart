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
        //COn esto podemos definir un tema para nuestra app
        //En este caso le estamos dando un color a la app
        //Y ese color se va a aplicar en todos los widgets que lo necesiten
        colorSchemeSeed: const Color(0xFFA6382E),
      ),
      home: WellcomePage(),
    );
  }
}
