import 'package:firstflutter/pages/fichepdip.dart';
import 'package:firstflutter/pages/mpivarotra.dart';
import 'package:firstflutter/pages/varotra.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [
    const Mpivarotra(),
    const VarotraTsp(),
    const FichePDipp()
  ];

  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('P-dipping App'),
            elevation: 20,
            actions: [
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})
            ]),
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceBright),
                child: const Text('Menu')),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Paramètres'),
                subtitle: const Text('Modifier les paramètres de votre apps'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text('Profil'),
                subtitle: const Text('Tout sur le user'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Fanampiana'),
                subtitle: const Text('Misy tsy mazava na fanampiana ilainao'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {}),
          ]),
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
