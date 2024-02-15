import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/menuinferior.dart';
import 'package:ifood/screens/Profile/profilescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o proximo item
  void nextStation(int position){
    setState((){
      itemSelecionado = position;
    });
  }
  //lista de paginas
  List<Widget> telas = const [
    Text('Home'),
    Text('Search'),
    Text('Cart'),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: telas.elementAt(itemSelecionado),),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}


