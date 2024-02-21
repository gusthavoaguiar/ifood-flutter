import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/slide.dart';
import 'package:ifood/CustomWidgets/styles.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(190, 80, Colors.deepPurple, "Pet", "assets/pet.png"),
                card(190, 80,  Colors.deepPurple, "Mercado", "assets/mercado.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                secondCard(90, 100, Colors.deepPurple[50], "Farmácia", "assets/farmacia.png"),
                secondCard(90, 100, Colors.deepPurple[50], "Bebidas", "assets/bebidas.png"),
                const SizedBox(width: 10),
                secondCard(90, 100, Colors.deepPurple[50], "Sucos", "assets/sucos.png"),
                secondCard(90, 100, Colors.deepPurple[50], "Pizza", "assets/pizza.png"),
              ],
            ),
          ),
          Slide(),
        ],
      ),
    );
  }
}