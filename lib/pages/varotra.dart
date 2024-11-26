import 'package:flutter/material.dart';

class VarotraTsp extends StatefulWidget {
  const VarotraTsp({super.key});

  @override
  State<VarotraTsp> createState() => _VarotraTspState();
}

class _VarotraTspState extends State<VarotraTsp> {
  var bg = Colors.white;
  void setColor(c) {
    setState(() {
      bg = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: ListView(
      children: [
        ElevatedButton(
          onPressed: () => setColor(Colors.white),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1))),
          child: const Text('Bouton élevé'),
        ),
        OutlinedButton(
            onPressed: () => setColor(Colors.orange), child: const Text('Bouton avec contour')),
        TextButton(onPressed: () => setColor(Colors.red), child: const Text('Bouton de texte')),
        IconButton(
          onPressed: () => setColor(Colors.blue),
          icon: const Icon(Icons.gamepad),
          style: IconButton.styleFrom(
              backgroundColor: Colors.blue, foregroundColor: Colors.white),
        )
      ],
    ));
  }
}
