import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              hintText: 'Buscar em todo o iFood',
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.all(4),
              prefixIcon: const Icon(Icons.search, color: Colors.red),
              filled: true,
              fillColor: Colors.grey[50]),
        ),
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categorias', style: textNunitoBold(16))),
          Wrap(
            children: [
              card(180, 80, Colors.red, 'Mercado', 'mercado.png'),
              card(180, 80, Colors.orange, 'Farmácia', 'farmacia.png'),
              card(180, 80, Color.fromARGB(235, 91, 209, 218), 'Bebidas', 'bebidas.png'),
              card(180, 80, const Color.fromARGB(255, 1, 100, 4), 'Pet', 'pet.png'),
              card(180, 80, Colors.purple, 'Sorvete', 'sorvete.png'),
              card(180, 80, Colors.brown, 'Café', 'cafe.png'),
              card(180, 80, Colors.blue, 'Lanches', 'lanches.png'),
              card(180, 80, Colors.pink, 'Pizza', 'pizza.png'),
              card(180, 80, Colors.grey, 'Espetinho', 'carnes.png'),
              card(180, 80, Colors.amber, 'Hot Dog', 'hotDog.png'),
              card(180, 80, Colors.cyan, 'Marmita', 'marmita.png'),
              card(180, 80, Colors.blueGrey, 'Suco', 'sucos.png'),
              card(180, 80, Colors.teal, 'Sopas', 'sopas.png'),
              card(180, 80, Colors.deepOrange, 'Tapioca', 'tapioca.png'),
              card(180, 80, Colors.indigo, 'Peixes', 'peixes.png'),
            ],
          )
        ],
      ),
    );
  }
}
