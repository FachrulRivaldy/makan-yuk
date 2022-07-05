import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/screens/detail_page.dart';
import 'package:restaurant_reservation_app/screens/homepage.dart';
import 'package:restaurant_reservation_app/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage(),
    );
  }
}
