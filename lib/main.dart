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
          leading: Container(),
          title: const Text("Minhas tarefas"),
        ),
        body: ListView(
          children: const [
            Task("Teste", "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg"),
            Task(
                "Bike", ""),
            Task("Nadar", ""),
            Task("Nadar", ""),
            Task("Pedalar", ""),
            Task("Pescar", "https://www.infoescola.com/wp-content/uploads/2016/08/golfe_235696687-1000x667.jpg"),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(onPressed: () {
          print("Pressionou o botão");
        }),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String urlFoto;

  const Task(this.nome, this.urlFoto, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 150,
          ),
          Column(
            children: [
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
                      child: Image.network(widget.urlFoto, fit: BoxFit.cover,),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        widget.nome,
                        style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    SizedBox(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.arrow_drop_up),
                              Text("Up", style: TextStyle(fontSize: 12),)
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel/10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nivel:  $nivel",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
