import 'package:flutter/material.dart';

class Mpivarotra extends StatefulWidget {
  const Mpivarotra({super.key});

  @override
  State<Mpivarotra> createState() => _MpivarotraState();
}

class _MpivarotraState extends State<Mpivarotra> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('Mombamomba ny mpivarotra',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              hintText: 'mpivarotra',
              labelText: 'Soraty ny anaran\'ny mpivarotra',
              border: OutlineInputBorder()),
              
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send))
      ],
    );
  }
}
