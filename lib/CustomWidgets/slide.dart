import 'dart:async';
import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    automatic();
  }
  automatic(){
    Timer.periodic(Duration(seconds: 2), (timer) { 
      int page = pageController.page!.round() + 1;
      setState(() {
        currentPage = page;
      });
      if(currentPage >= 3){
        page = 0;
      }
      pageController.animateToPage(
        page,
        duration: Duration(seconds: 2), 
        curve: Curves.easeOut);
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return  Container(
      margin: const EdgeInsets.all(14),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      child: PageView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            ),
            Container(
            width: double.infinity,
            height: 200,
            color: Colors.black,
            ),
            Container(
            width: double.infinity,
            height: 200,
            color: Colors.green,
            ),
        ],
      ),
    );
  }
}