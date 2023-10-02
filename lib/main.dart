import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Mi primera app'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  "Bienvenido a mi primera app",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text("Presioname"),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Ingresa tu ID"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Ingresar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
