import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_model.dart';

import 'package:food_app/pages/home/home.dart';
import 'package:food_app/pages/home/home_page.dart';

import 'package:food_app/pages/login.dart';
import 'package:food_app/pages/home/Product_Overview/productOverview.dart';
import 'package:food_app/pages/register_screen.dart';
import 'package:food_app/utils/theme.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: myThemeData(),
      home: HomeScreen(),
    );
  }
}


