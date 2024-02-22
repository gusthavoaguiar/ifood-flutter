import 'dart:async';
import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progress = [
    0.0,
    0.0,
    0.0,
  ];
  int qtdPages = 3;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      int nextPage = currentPage + 1;
      if (nextPage >= qtdPages) {
        nextPage = 0;
      }

      pageController
          .animateToPage(nextPage,
              duration: Duration(milliseconds: 300), curve: Curves.linear)
          .then((_) {
        setState(() {
          (() {
            currentPage = nextPage;
            reset();
          });
        });
      });
    });
  }

  void startProgress() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progress[currentPage] < 1) {
          progress[currentPage] += 0.02;
        } else {
          timer.cancel();
        }
      });
    });
  }

//método para resetar a animação
  void reset() {
    for (int i = 0; i < qtdPages; i++) {
      progress[i] = 0.0;
    }
    startProgress();
  }

//método para criar o indicator
  List<Widget> buildIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < qtdPages; i++) {
      list.add(Container(
        width: 50,
        height: 5,
        margin: EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progress[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(
              currentPage == i ? Colors.blue : Colors.grey),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(14),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
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
          ],
        ));
  }
}
