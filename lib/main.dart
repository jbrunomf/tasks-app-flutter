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
  final int dificuldade;

  const Task(this.nome, this.urlFoto, this.dificuldade, {Key? key}) : super(key: key);

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
            // color: Colors.blue,
            height: 150,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 72,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          widget.urlFoto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.dificuldade >= 1 ? Colors.blue : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.dificuldade >= 2 ? Colors.blue : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.dificuldade >= 3 ? Colors.blue : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.dificuldade >= 4 ? Colors.blue : Colors.blue[100],
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: widget.dificuldade >= 5 ? Colors.blue : Colors.blue[100],
                            ),
                          ],
                        ),
                      ],
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
                              Text(
                                "Up",
                                style: TextStyle(fontSize: 12),
                              )
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
                        value: nivel / 10,
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
