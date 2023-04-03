import 'package:app_flutter/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Bike",
                "assets/images/bike.webp",
                1),
            Task(
                "Dash",
                "assets/images/dash.png",
                2),
            Task(
                "Jogar",
                "assets/images/jogar.jpg",
                3),
            Task(
                "Ler",
                "assets/images/livro.jpg",
                4),
            Task(
                "Meditar",
                "assets/images/meditar.jpeg",
                5),
            SizedBox(
              height: 80,
            )
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
    );
  }
}
