import 'package:google_fonts/google_fonts.dart';
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
    return Scaffold(
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
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(198, 80, Colors.deepPurple[50], "Pet", "assets/pet.png"),
                card(198, 80, Colors.deepPurple[50], "Mercado",
                    "assets/mercado.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                secondCard(95, 100, Colors.deepPurple[50], "Farmácia",
                    "assets/farmacia.png"),
                secondCard(95, 100, Colors.deepPurple[50], "Bebidas",
                    "assets/bebidas.png"),
                secondCard(95, 100, Colors.deepPurple[50], "Sucos",
                    "assets/sucos.png"),
                secondCard(95, 100, Colors.deepPurple[50], "Ver mais",
                    "assets/redplus.png"),
              ],
            ),
          ),
          Slide(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(children: [
              Text(
                "Tudo a partir de R\$0,99!",
                style: GoogleFonts.nunitoSans(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Text(
                "Ver mais",
                style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.red),
              )
            ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                foodCard(
                    "https://i0.wp.com/alinemarcio.creativers.com.br/wp-content/uploads/2022/04/hotdog.jpg?fit=900%2C593&ssl=1",
                    "Dogão Completo",
                    "R\$7,99",
                    "15-25 min ● R\$2,00"),
                foodCard(
                    "https://i0.wp.com/alinemarcio.creativers.com.br/wp-content/uploads/2022/04/hotdog.jpg?fit=900%2C593&ssl=1",
                    "Dogão Completo",
                    "R\$7,99",
                    "15-25 min ● R\$2,00"),
                    foodCard(
                    "https://i0.wp.com/alinemarcio.creativers.com.br/wp-content/uploads/2022/04/hotdog.jpg?fit=900%2C593&ssl=1",
                    "Dogão Completo",
                    "R\$7,99",
                    "15-25 min ● R\$2,00"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
