import 'package:app_flutter/task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool visivel = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text("Minhas tarefas"),
        ),
        body: AnimatedOpacity(
          opacity: visivel ? 1 : 0,
          duration: const Duration(milliseconds: 2000),
          child: ListView(
            children: const [
              Task("Teste",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg", 1),
              Task("Bike", "", 2),
              Task("Nadar", "", 3),
              Task("Nadar", "", 4),
              Task("Pedalar", "", 5),
              Task("Pescar",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg", 5),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(onPressed: () {
          setState(() {
            visivel = !visivel;
          });
        },
        child: const Icon(Icons.remove_red_eye),),
      ),
    );
  }
}

