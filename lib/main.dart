import 'package:flutter/material.dart';
import 'package:grocery_app/views/screens/billprint_page.dart';
import 'package:grocery_app/views/screens/fruit_page.dart';
import 'package:grocery_app/views/screens/grocery_page.dart';
import 'package:grocery_app/views/screens/home_page.dart';
import 'package:grocery_app/views/screens/homecare_page.dart';
import 'package:grocery_app/views/screens/registration_page.dart';
import 'package:grocery_app/views/screens/second_page.dart';
import 'package:grocery_app/views/screens/splash_screen.dart';
import 'package:grocery_app/views/screens/terms_of_use_page.dart';
import 'package:grocery_app/views/screens/vegetables_page.dart';

import 'views/screens/details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "second_page": (context) => SecondPage(),
        "registration_page": (context) => RegistrationPage(),
        "terms_of_use_page": (context) => TermsofUsePage(),
        "home_page": (context) => HomePage(),
        "vegetables_page": (context) => VegetablesPage(),
        "fruit_page": (context) => FruitPage(),
        "grocery_page": (context) => GroceryPage(),
        "homecare_page": (context) => const HomeCarePage(),
        "details_page": (context) => DetailsPage(),
        "billprint_page": (context) => BillPrintPage(),
        // '/': (context) => Scaffold(
        //       appBar: AppBar(
        //         title: Text("Grocery App"),
        //         actions: [
        //           IconButton(
        //             onPressed: () {
        //               setState(() {
        //                 isDark = !isDark;
        //               });
        //             },
        //             icon: Icon(Icons.sunny),
        //           ),
        //         ],
        //       ),
        //       backgroundColor: Colors.white,
        //     ),
      },
    );
  }
}
