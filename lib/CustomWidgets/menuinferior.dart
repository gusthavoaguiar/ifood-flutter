//Função que retorna um bottomNavigationBarItem
import 'package:flutter/material.dart';

BottomNavigationBar bottomNavigationBar(int itemSelecionado, nextStation){
  return BottomNavigationBar(
        currentIndex: itemSelecionado,
        onTap: nextStation,
        selectedItemColor: Colors.black,
        items: [
          bottomNavigationBarItem(Icons.home, 'Home'),
          bottomNavigationBarItem(Icons.search, 'Search'),
          bottomNavigationBarItem(Icons.shopping_cart, 'Cart'),
          bottomNavigationBarItem(Icons.person, 'Profile'),
        ],
      );
}

BottomNavigationBarItem bottomNavigationBarItem(IconData icon, String texto) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      color: Colors.black,
    ),
    label: texto,
  );
}