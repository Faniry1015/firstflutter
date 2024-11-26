import 'package:flutter/material.dart';

class AboutDev extends StatefulWidget {
  const AboutDev({super.key});

  @override
  State<AboutDev> createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
          title: const Text('A propos du dev'), centerTitle: true, elevation: 12, backgroundColor: Colors.deepPurple, foregroundColor: Colors.white,),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context); 
            },
           child: const Text('Revenir vers l\'accueil'),),
        ),
      ),
    );
  }
}