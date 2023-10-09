import 'package:flutter/material.dart';
import 'package:test_ing_mw/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.name, // podemos recibir parametros en el constructor
    // Se pone required para indicar que es un parametro obligatorio
  });

  final String name;

  //Esto es solo una función que retorna un Widget
  //Recibe como parametro un String y una función
  Widget customButton(String text, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(name: text),
          ),
        );
      },
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(180, 10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Color(0xFFA6382E),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9958F),
      body: SafeArea(
        // SafeArea es un widget que nos permite evitar que el contenido se sobreponga a la barra de notificaciones en mobile(Notch)
        child: Center(
          child: Column(
            children: [
              Text(
                "Hola $name!",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Acá tu lista de estudiantes",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              customButton("Tomás", context),
              const SizedBox(height: 10),
              customButton("Juan", context),
              const SizedBox(height: 10),
              customButton("Susana", context),
              const SizedBox(height: 10),
              customButton("Miguel", context),
              const Spacer(
                flex: 2,
              ), //Flex 2 es el doble de espacio que flex 1 (por defecto)
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Volver"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
