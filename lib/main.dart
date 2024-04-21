import 'package:flutter/material.dart';
import 'package:testapp/widgets/video_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra de navegacion
      appBar: AppBar(
        //Titulo de la appbar
        title: Text("Youtube"),
        //Color de la barra de navegacion
        backgroundColor: Colors.red,
        //Iconos de la barra de navegacion
        actions: const [
          Icon(Icons.search),
          Icon(Icons.camera_front),
          Icon(Icons.person)
        ],
      ),
      //Body de la aplicación
      //SingleChildScrollView para poder scrollear para abajo
      body: SingleChildScrollView(
        //Columna donde se llama la clase VideoCard, la cual contiene los datos del video
        child: Column(children: const [
          VideoCard(),
          VideoCard(),
          VideoCard(),
        ]),
      ),
    );
  }
}
