import 'package:flutter/material.dart';
import 'package:test_ing_mw/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9958F),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            "Te damos la bienvenida a ClaeApp",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const Spacer(),
          TextFormField(),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HomePage(),
                ),
              );
            },
            child: Text("Ingresar"),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
