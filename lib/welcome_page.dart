import 'package:flutter/material.dart';
import 'package:test_ing_mw/home_page.dart';

class WellcomePage extends StatelessWidget {
  WellcomePage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9958F),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Te damos la bienvenida a ClaseApp",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 220,
            child: TextFormField(
              controller: controller,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: const Text(
                  "Ingresa tu ID",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HomePage(
                    name: controller.text,
                  ),
                ),
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Ingresar",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
