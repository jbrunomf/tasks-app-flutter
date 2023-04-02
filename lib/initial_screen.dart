import 'package:app_flutter/task.dart';
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
    );
  }
}
