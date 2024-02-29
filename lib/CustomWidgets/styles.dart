import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textRobotoBold(double size){
  return GoogleFonts.roboto(
    fontSize: size,
    fontWeight: FontWeight.bold,
  );
}

TextStyle textRoboto300(double size){
  return GoogleFonts.roboto(
    fontSize: size,
    fontWeight: FontWeight.w300,
  );
}

Widget spaceH(space){
  return SizedBox(width: space);
}

Widget spaceV(space){
  return SizedBox(height: space);
}

TextStyle textNunito300(double size){
  return GoogleFonts.nunitoSans(
    fontSize: size,
    fontWeight: FontWeight.w300,
  );
}

TextStyle textNunitoBold(double size){
  return GoogleFonts.nunitoSans(
    fontSize: size,
    fontWeight: FontWeight.w700,
  );
}

TextStyle textNunitoWhiteBold(double size) {
  return GoogleFonts.nunitoSans(
      color: Colors.white, fontSize: size, fontWeight: FontWeight.bold);
}
