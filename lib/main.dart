import 'package:app_devolopment/home_page.dart';
import 'package:app_devolopment/turistik_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      routes: {
        Lessononepage.id: (context) => Lessononepage(),
      },
    );
  }
}
