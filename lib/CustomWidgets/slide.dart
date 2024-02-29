import 'dart:async';
import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  //objeto que define o controle das páginas
  PageController pageController = PageController();
  List<double> progress = [
    0.0,
    0.0,
    0.0,
  ];
  int qtdPages = 3;
  int currentPage = 0;
  //método que é chamado antes da página ser construída
  @override
  void initState() {
    super.initState();
    nextPage();
    startProgress();
  }

  //método para mudar de página peridioticamente
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

  //iniciar o progresso
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
      height: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image(image: NetworkImage("https://scontent.fcgh39-1.fna.fbcdn.net/v/t1.6435-9/107672055_3276130729074026_3153820493278039029_n.jpg?stp=cp0_dst-jpg_e15_p320x320_q65&_nc_cat=101&ccb=1-7&_nc_sid=3c63d6&_nc_ohc=f9zOkceXJSsAX8c2AMk&_nc_ht=scontent.fcgh39-1.fna&oh=00_AfCh3G7CUXHQhmERTC-v2aRBsqSgiRYxoBvvL4bOKU8Wjw&oe=66077EAC"))
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.green,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildIndicator(),
            ),
          )
        ],
      ),
    );
  }
}


// class Slide extends StatefulWidget {
//   const Slide({super.key});

//   @override
//   State<Slide> createState() => _SlideState();
// }

// class _SlideState extends State<Slide> {
//   //objeto que define o controle das páginas
//   PageController pageController = PageController();
//   List<double> progresso = [0.0, 0.0, 0.0];
//   int qtdPaginas = 3;
//   int paginaAtual = 0;
//   //método que é chamado antes da página ser construída
//   @override
//   void initState() {
//     super.initState();
//     nextPage();
//     iniciarProgresso();
//   }
//   //método para mudar de página peridioticamente
//   nextPage() {
//     Timer.periodic(const Duration(seconds: 3), (timer) {
//       int proximaPagina = paginaAtual + 1;
//       if (proximaPagina >= qtdPaginas) {
//         proximaPagina = 0;
//       }

//       pageController
//           .animateToPage(proximaPagina,
//               duration: Duration(milliseconds: 300), curve: Curves.linear)
//           .then((_) {
//         setState(() {
//           paginaAtual = proximaPagina;
//           reset();
//         });
//       });
//     });
//   }

//   //iniciar o progresso
//   void iniciarProgresso() {
//     Timer.periodic(const Duration(milliseconds: 50), (timer) {
//       setState(() {
//         if (progresso[paginaAtual] < 1) {
//           progresso[paginaAtual] += 0.02;
//         } else {
//           timer.cancel();
//           reset();
//         }
//       });
//     });
//   }

//   //método para resetar a animação
  // void reset() {
  //   for (int i = 0; i < qtdPaginas; i++) {
  //     progresso[i] = 0.0;
  //   }
  //   iniciarProgresso();
  // }

//   //método para criar o indicator
//   List<Widget> buildIndicator() {
//     List<Widget> lista = [];

//     for (int i = 0; i < qtdPaginas; i++) {
//       lista.add(Container(
//         width: 50,
//         height: 5,
//         margin: const EdgeInsets.all(8),
//         child: LinearProgressIndicator(
//           borderRadius: BorderRadius.circular(8),
//           value: progresso[i],
//           backgroundColor: Colors.grey[200],
//           valueColor: AlwaysStoppedAnimation<Color>(
//               paginaAtual == i ? Colors.blue : Colors.grey),
//         ),
//       ));
//     }
//     return lista;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(14),
//       width: double.infinity,
//       height: 200,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
//       child: Stack(
//         alignment: AlignmentDirectional.bottomCenter,
//         children: [
//           PageView(
//             controller: pageController,
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 color: Colors.red,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 color: Colors.black,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 color: Colors.green,
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.all(8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: buildIndicator(),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }