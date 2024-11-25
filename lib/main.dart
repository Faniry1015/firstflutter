import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List contacts = [
    'rakoto bernard',
    'rabe Jean',
    'rakoto firinga',
    'rakoto bernard',
    'rabe Jean',
    'rakoto firinga',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Container"), elevation: 12, centerTitle : true),
      body: ListView.separated(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.all(10),
                child: Text(contacts[index]));
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },),
    );
  }
}
