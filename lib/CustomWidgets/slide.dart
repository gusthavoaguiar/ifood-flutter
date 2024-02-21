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
    nextPage();
  }
  nextPage(){
    Timer.periodic(Duration(seconds: 3), (timer) {
      int page = pageController.page!.round() + 1;
      if (page >= 3){
        pageController.animateToPage(0, duration: Duration(seconds: 2), curve: Curves.easeIn);
      } else {
        pageController.nextPage(duration: Duration(seconds: 2), curve: Curves.easeIn);
      }
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
        controller: pageController,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.orange,
            ),
            Container(
            width: double.infinity,
            height: 200,
            color: Colors.black,
            ),
            Container(
            width: double.infinity,
            height: 200,
            color: Colors.purple,
            ),
        ],
      ),
    );
  }
}