import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hola este es el home page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("volver"),
            ),
          ],
        ),
      ),
    );
  }
}
