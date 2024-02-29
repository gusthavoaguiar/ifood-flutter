import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/historyCard.dart';
import 'package:ifood/CustomWidgets/orderAgain.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MEUS PEDIDOS',
          style: textNunitoBold(12),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          orderAgain(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Text('Histórico', style: textNunitoBold(20)),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text('Sáb., 24 fevereiro 2024', style: textNunito300(14)),
              )),
          historyCard('Pizzaria Kaian', '2', 'Pizza Frango com Catupiry'),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Text('Sáb., 17 fevereiro 2024', style: textNunito300(14)),
              )),
          historyCard('Ponto da Esfiha', '20', 'Esfiha Carne'),
        ]),
      ),
    );
  }
}
