
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modul 5"),
        centerTitle: true,
      ),
      body: Wrap(
        children: [
          FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, "turistik_page");
            },
            child: Text("Lesson 1"),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
