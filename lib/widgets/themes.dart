// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: darkBluishColor,
          secondary: darkBluishColor,
        ),
        // buttonTheme: ButtonThemeData(
        // buttonColor: darkBluishColor,
        // ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          // textTheme: Theme.of(context).textTheme,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        // brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: lightBluishColor,
          secondary: Colors.white,
          brightness: Brightness.dark,
        ),
        // buttonTheme: ButtonThemeData(
        //   buttonColor: darkBluishColor,
        // ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          // textTheme: Theme.of(context).textTheme,
        ),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
