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
  bool isVisible = true;

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
          opacity: isVisible ? 1 : 0,
          duration: const Duration(milliseconds: 2000),
          child: ListView(
            children: const [
              Task(
                  "Teste",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg",
                  1),
              Task(
                  "Bike",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg",
                  2),
              Task(
                  "Nadar",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg",
                  3),
              Task(
                  "Nadar",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg",
                  4),
              Task(
                  "Pedalar",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg",
                  5),
              Task(
                  "Pescar",
                  "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg",
                  5),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
