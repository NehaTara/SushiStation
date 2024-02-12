import 'package:flutter/material.dart';
import 'package:flutter_test_1/models/shop.dart';
import 'package:flutter_test_1/pages/cart_page.dart';
import 'package:flutter_test_1/pages/food_details_page.dart';
import 'package:flutter_test_1/pages/login_page.dart';
import 'package:flutter_test_1/pages/signUp_Page.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const IntroPage(),
      theme: ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
      brightness: MediaQueryData.fromWindow(WidgetsBinding.instance!.window).platformBrightness,
    ),
    darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),
      routes: {
        '/loginPage' :(context) => LoginPage(),
        '/signupPage' :(context) => SignUpPage(),
        '/intropage':(context) => const IntroPage(),
        '/menupage':(context) => const MenuPage(),
        '/cartpage':(context) => const CartPage(),
      },
    );
  }
}
