import 'package:app_devolopment/home_page.dart';
import 'package:flutter/material.dart';

class Testpage extends StatefulWidget {
  static final String id = "test_page";

  @override
  State<Testpage> createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  _doSignin() {
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushNamed(context, Homepage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
        body: Column(
        children: [
        Expanded(
        flex: 3,
        child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 20, top: 40),
    child: RichText(
    text: TextSpan(
    text: "Login\n",style: TextStyle(color:Colors.white,fontSize: 30,),
    children: [
    TextSpan(
    text: "Welcome Back",style: TextStyle(color: Colors.white,fontSize: 18),
    ),
    ]
    ),
    ),
    ),
    ),
    Expanded(
    flex:7,
    child: Container(
    //radiusi
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(topLeft: Radius.circular(53),topRight: Radius.circular(53)),
    ),
    child: Column(
    children: [
    SizedBox(height: 100,),
    Container(
    margin: EdgeInsets.only(left: 20,right: 20,),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
    ),
    child: TextField(
    controller: emailController,
    style: TextStyle(fontSize: 16),
    decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10),
    border: OutlineInputBorder(borderSide:BorderSide(color: Colors.green)),
    hintText: "Email",
    hintStyle: TextStyle(color: Colors.black87)
    ),
    ),
    ), Container(
    margin: EdgeInsets.only(left: 20,right: 20,),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
    ),
    child: TextField(
    controller: passwordController,
    style: TextStyle(fontSize: 16),
    decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10),
    border: OutlineInputBorder(borderSide:BorderSide(color: Colors.green)),
    hintText: "Password",
    hintStyle: TextStyle(color: Colors.black87)
    ),
    ),
    ),
    SizedBox(height: 35,),
    SizedBox(
    height: 45,
    width: 220,
    child: FlatButton(
    onPressed: (){
    _doSignin();
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.apple,color: Colors.white,),
        Text("Login",style: TextStyle(color: Colors.white),),
      ],
    ),
    color: Colors.green,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
    ),
    ),
    ),
      SizedBox(height: 30,),
      Container(
        height: 30,
        child: GestureDetector(
          onTap: (){},
          child: Text("Login with SNS",style: TextStyle(color: Colors.blue),),
        ),
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 45,
            width: 150,
            child: FlatButton(
              onPressed: (){
                _doSignin();
              },
              child: Text("Facebook",style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(width: 30,),
          SizedBox(
            height: 45,
            width: 150,
            child: FlatButton(
              onPressed: (){
                _doSignin();
              },
              child: Text("Github",style: TextStyle(color: Colors.white),),
              color: Colors.black87,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    ],
    ),
    ),),

    ],
    ),
        );
  }
}


