import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifood/CustomWidgets/circleWidget.dart';
import 'package:ifood/CustomWidgets/styles.dart';

  @override
  Widget orderAgain() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: double.infinity - 100,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Peça de novo',
                    style: textNunitoBold(24),
                  ),
                  Spacer(),
                  circleAvatar(
                      'https://static.ifood.com.br/webapp/images/logo-smile-512x512.png')
                ],
              ),
              Row(
                children: [
                  Text('15  ', style: textNunitoBold(18)),
                  Text('Esfiha Carne', style: textRoboto300(16))
                ],
              ),
              Row(
                children: [
                  Text('5  ', style: textNunitoBold(18)),
                  Text('Esfiha de Queijo', style: textRoboto300(16))
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red),
                  child: Center(
                    child: Text(
                      "Adicionar à sacola",
                      style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }