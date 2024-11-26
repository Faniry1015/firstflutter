import 'package:flutter/material.dart';
import 'package:firstflutter/pages/fichepdip.dart';
import 'package:firstflutter/pages/varotra.dart';
import 'package:firstflutter/pages/mpivarotra.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(
      colorSchemeSeed: const Color.fromARGB(255, 54, 146, 57),
      scaffoldBackgroundColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> pages = [
    const FichePDipp(),
    const VarotraTsp(),
    const Mpivarotra()
  ];

  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('P-dipping'),
          elevation: 12,
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(20), child: pages[pageIndex]),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.25))),
            child: NavigationBar(
                backgroundColor: Colors.white,
                selectedIndex: pageIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home), label: 'Mpivarotra'),
                  NavigationDestination(
                      icon: Icon(Icons.money), label: 'Varotra TSP'),
                  NavigationDestination(
                      icon: Icon(Icons.book), label: 'fiche p-dip'),
                ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)));
  }
}
