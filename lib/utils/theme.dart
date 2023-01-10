import 'package:flutter/material.dart';

ThemeData myThemeData() {
  return ThemeData(
    primarySwatch: Colors.amber,
    appBarTheme: myAppBarTheme(),
    textTheme: myTextTheme(),
    inputDecorationTheme: myInputDecoration(),


  );
}


InputDecorationTheme myInputDecoration(){

  OutlineInputBorder outlineInputBorder=OutlineInputBorder(
    gapPadding: 15,
    borderSide: BorderSide(
        color: Colors.amber,
        width: 3
    ),
    borderRadius: BorderRadius.circular(30),
  );
  return InputDecorationTheme(
    labelStyle: TextStyle(fontSize: 25,color: Colors.indigo),
    contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    errorStyle: TextStyle(fontSize: 18),
    hintStyle: TextStyle(color: Colors.deepPurple, fontSize: 18),
    //floatingLabelStyle: TextStyle(color: Colors.white),
    fillColor: Colors.white.withOpacity(0.6),
    filled: true,


    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,

  );
}


TextTheme myTextTheme(){
  return TextTheme(
    headline4: TextStyle(
      fontSize: 30,
      color: Colors.black54,
    ),
    bodyText1: TextStyle(
      color: Colors.grey[200],
      fontSize:25
    ),
  );
}

AppBarTheme myAppBarTheme(){
  return const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.amberAccent,
    titleTextStyle: TextStyle(color: Colors.cyan, fontSize: 25),
    iconTheme: IconThemeData(color: Colors.cyan)
  );
}