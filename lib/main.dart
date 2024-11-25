import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          elevation: 12,
        ),
        body: Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(10),
                    child: const Text('Body')),
                const Text('body 2'),
                Image.network(
                    'https://solguruz.com/_next/image/?url=https%3A%2F%2Fblog.solguruz.com%2Fwp-content%2Fuploads%2F2023%2F11%2FFlutter-for-Hybrid-Apps-Why-Flutter-is-the-Best-Platform-to-Make-Hybrid-Apps.png&w=1080&q=75',
                    width: 250)
              ],
            )));
  }
}
