import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Mpivarotra extends StatefulWidget {
  const Mpivarotra({super.key});

  @override
  State<Mpivarotra> createState() => _MpivarotraState();
}

class _MpivarotraState extends State<Mpivarotra> {

  String mpivarotra = '';
  List countries = [];

final dio = Dio(); 

   getAllCountries() async {
    try {
    final response = await dio.get('https://restcountries.com/v3.1/independent?status=true');
    setState(() => countries = response.data,);
    print(response);
    } catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Ny anaran\'ny mpivarotra nosoratanao dia i : $mpivarotra',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        TextField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail),
              hintText: 'mpivarotra',
              labelText: 'Soraty ny anaran\'ny mpivarotra',
              helperText: 'iza ilay mpivarotra ?',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey),
          onChanged: (value) {
            setState(() {
              mpivarotra = value;
            });
          },
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        ElevatedButton(onPressed: getAllCountries, child: const Text('Afficher le nom de tous les pays du monde')),
        SizedBox(
        height: 1000,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(countries[index]['flags']['png'], width: 50, height: 50,),
              title: Text(countries[index]['name']['common']),
              subtitle: Text(countries[index]['name']['official']),
            );
          },
        ))
      ],
    );
  }
}
