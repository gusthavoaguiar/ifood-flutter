import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/menuinferior.dart';
import 'package:ifood/screens/Home/home.dart';
import 'package:ifood/screens/Profile/profilescreen.dart';
import 'package:ifood/screens/Search/search.dart';
import 'package:ifood/screens/cart/cart.dart';

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
    Home(),
    SearchScreen(),
    Cart(),
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


