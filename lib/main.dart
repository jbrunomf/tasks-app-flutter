import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
          title: const Text("Minhas tarefas"),
        ),
        body: ListView(
          children: [
            Task("Teste"),
            Task("Andar de bike"),
            Task("Nadar"),
            Task("Nadar"),
            Task("Pedalar"),
            Task("Pescar"),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(onPressed: () {
          print("Pressionou o botão");
        }),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;

  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 150,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black38,
                    width: 72,
                    height: 100,
                  ),
                  Text(
                    this.nome,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Icon(Icons.arrow_drop_up)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
