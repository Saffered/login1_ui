import 'package:app_devolopment/home_page.dart';
import 'package:flutter/material.dart';

class Testpage extends StatefulWidget {
  static final String id = "test_page";

  @override
  State<Testpage> createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.1),
          ]
        )
      ),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child:Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 20),) ,
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight: Radius.circular(50)),
                ),
                child: SingleChildScrollView(
                  child:Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25,),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:Color.fromRGBO(171, 171, 171, 0.7),blurRadius: 20,offset: Offset(0,10),
                                ),
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
                                  ),
                                  child: TextField(
                                   decoration: InputDecoration(
                                     hintText: "Email",
                                     hintStyle: TextStyle(color: Colors.grey,),
                                     border: InputBorder.none,
                                   ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
                                  ),
                                  child: TextField(
                                   decoration: InputDecoration(
                                     hintText: "Password",
                                     hintStyle: TextStyle(color: Colors.grey,),
                                     border: InputBorder.none,
                                   ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        height: 45,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.green,
                       ),
                        child: Center(
                          child: Text("Login",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Text("Login with SNS",style: TextStyle(color: Colors.grey[600]),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                        Expanded(
                          child: Container(
                            height:50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text("Facebook",style: TextStyle(color: Colors.white,),),
                            ),
                          ),
                        ),
                          SizedBox(width: 20,),Expanded(
                          child: Container(
                            height:50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text("Github",style: TextStyle(color: Colors.white,),),
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                  ],
                ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


