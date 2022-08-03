
import 'package:app_devolopment/home_page.dart';
import 'package:app_devolopment/pdp.dart';
import 'package:app_devolopment/test.dart';
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
      home: PdpLoginUiPage(),
      routes: {
        Lessononepage.id: (context) => Lessononepage(),
        PdpLoginUiPage.path:(context)=>PdpLoginUiPage(),
        Testpage.id:(context)=> Testpage(),
        Homepage.id: (context)=> Homepage(),
      },
    );
  }
}
