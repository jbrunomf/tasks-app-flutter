import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int dificultylevel;

  const Difficulty({
    required this.dificultylevel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: dificultylevel >= 1 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: dificultylevel >= 2 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: dificultylevel >= 3 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: dificultylevel >= 4 ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: dificultylevel >= 5 ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}
