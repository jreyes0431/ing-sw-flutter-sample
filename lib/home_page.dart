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
  //Esto no es lo adecuado, sin embargo es una forma de hacerlo sencillo
  Widget customButton(String text, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //Esto es lo que sucederá cada vez que se presione uno de estos botones
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(name: text),
          ),
        );
      },
      style: ButtonStyle(
        //acá le damos estilo al botón
        minimumSize: const MaterialStatePropertyAll(Size(180, 10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
      ),
      child: Padding(
        //Acá le estamos diciendo qué es lo que va a contener el botón
        //En este caso es un texto al que le aplicamos un padding y un style
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
                //En Flutter o Dart podemos concatenar Strings con variables de esta forma
                //Si quisieramos por ejemplo concatenar un String con un int, deberiamos hacerlo de la siguiente forma:
                // "Hola $name, tu edad es ${edad.toString()}"
                //Es decir encerrar entre llaves la expresión
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
              const Spacer(flex: 2),
              //Flex 2 es el doble de espacio que flex 1 (por defecto)
              //Así conseguimos que haya más espacio entre los botones y el botón de volver
              //Mientras que el espacio entre los botones y el título es más chico
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
