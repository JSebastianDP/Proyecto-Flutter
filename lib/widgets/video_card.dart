import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    //Ctrl + shift + r para encerrar todo el contenido dentro de un paddin
    return Padding(
      //Px del padding
      padding: const EdgeInsets.all(15.0),
      //Imagen miniatura del video
      child: Column(
        children: [
          Container(
            child: Image.asset("assets/images/img2.jpeg"),
          ),
          //Insertar una especie de contenedor invisible para separar la imagen de los datos del video verticalmente
          const SizedBox(
            height: 10.0,
          ),
          //Se crea una fila
          Row(
            children: [
              //Foto de perfil del usuario, radio del circulo
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/img1.jpeg"),
              ),
              //Contenedor invisible para separar los datos horizontalmente
              const SizedBox(
                width: 12.0,
              ),

              Column(
                // crossAxisAlignment para alinear el texto al inicio
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Titulos del video, el ancho es para que la letra no se salga de la pantalla
                  Container(
                    width: 250,
                    child: const Text(
                      "Titulo del videoooooooooooooooooo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  //Demas titulos del video
                  const Text(
                    "Sebastian Diaz - 500 visitas",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
