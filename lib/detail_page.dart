import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.name,
  });

  final String name;

  //Lo mismo que hicimos en la HomePage, pero esta vez con un Row
  //Esto es solo una función que retorna un Widget
  //Lo que de verdad se debe hacer es crear un widget personalizado
  //Pero para efectos de este ejemplo lo pueden hacer así
  Widget customRow(String field, String content) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$field: ",
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white60,
            ),
          ),
          Text(
            content,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9958F),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //Este BackButton es un widget que nos permite regresar a la pantalla anterior
              //además de que tiene un estilo que se adapta al sistema operativo
              const Align(
                //COn este Align podemos alinear el botón a la izquierda
                //También puede usarse así:
                //alignment: Alignment(1, -1), donde 1 es la derecha (x) y -1 es arriba (y)
                alignment: Alignment.topLeft,
                child: BackButton(
                  color: Colors.white,
                ),
              ),
              //Agregamos un texto que recibe el parametro que le pasamos
              Text(
                name,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              //Todos estos datos de la customRow podríamos también pedirlos
              //En el constructor o en otro lado
              //O podríamos pasar un objeto que traiga todo esto como atributos
              customRow("ID", "000293847"),
              const SizedBox(height: 10),
              customRow("Programa", "Ing sistemas"),
              const SizedBox(height: 10),
              customRow("Nota", "4.5"),
              //Hacemos este Spacer con un flex bien grande
              //para que nuestro contenido se mantenga en la parte superior
              const Spacer(flex: 7),
            ],
          ),
        ),
      ),
    );
  }
}
