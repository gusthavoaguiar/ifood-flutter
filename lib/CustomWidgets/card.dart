import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/styles.dart';

Widget card(double width, double height, color, String text, img) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: textNunitoBold(16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              img,
              width: 64,
              height: 64,
            ),
          )
        ],
      ),
    ),
  );
}

Container secondCard(
    double width, double height, Color? color, String text, String img) {
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 32, height: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text, style: textNunito300(14)),
          ),
        ],
      ),
    ),
  );
}

Container foodCard(String url, String name, String price, String waitingTime) {
  return Container(
    margin: const EdgeInsets.fromLTRB(16, 8, 8, 16),
    width: 150,
    height: 250,
    decoration: BoxDecoration(border:Border.all(color: Colors.grey)),
    child: Column(
      children: [
        Container(
          width: 150,
          height: 125,
          decoration:
              BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
        ),
        Container(
          padding: EdgeInsets.all(8),
            child: Column(
          children: [
            Text(name, textAlign: TextAlign.start,style: textNunitoBold(14)), spaceV(16), Text(price, textAlign: TextAlign.start,style: textNunito300(14), selectionColor: Colors.green), spaceV(4), Text(waitingTime, textAlign: TextAlign.start,style: textNunito300(12), selectionColor: Color.fromARGB(255, 100, 100, 100),)
          ],
        ))
      ],
    ),
  );
}
