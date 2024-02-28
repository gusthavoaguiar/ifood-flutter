import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/circleWidget.dart';
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

Container foodCard(String text, String url, String imgAvatar, String text) {
  return Container(
    margin: const EdgeInsets.all(8),
    width: 180,
    height: 200,
    color: Colors.deepPurple,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Column(
      children: [
        Container(
          child: circleAvatar(imgAvatar),
          decoration:
              BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
        )
        Text(text)
      ],
    ),
  );
}
