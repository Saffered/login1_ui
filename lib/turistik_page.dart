import 'package:flutter/material.dart';
class Lessononepage extends StatefulWidget {
static final String id="turistik_page";
  @override
  State<Lessononepage> createState() => _LessononepageState();
}

class _LessononepageState extends State<Lessononepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //images
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 60,),
              height: 170,
              width: 230,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/antaliya.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // text
          Container(
              margin: EdgeInsets.symmetric(horizontal: 80,),
              child: Text(
                "Experience Asia Like a True Local",
                style: TextStyle(fontSize: 30, color: Colors.black87),
              )),
          SizedBox(
            height: 10,
          ),
          //baholash
          Container(
            margin: EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text(
                  "123",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "|",
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Wiev",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              //images
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 12, left: 65),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/photo.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(
                width: 12,
              ),

              Expanded(
                child: Column(
                  children: [
                    //text
                    Container(
                        child: Text(
                          "Experience Asia Like a True Local",
                          style: TextStyle(fontSize: 25, color: Colors.black87),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    // baxolash
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text(
                            "123",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "|",
                            style:
                            TextStyle(color: Colors.black87, fontSize: 10),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Wiev",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              //images
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 12, left: 65),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/photo1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(
                width: 12,
              ),

              Expanded(
                child: Column(
                  children: [
                    //text
                    Container(
                        child: Text(
                          "Experience Asia Like a True Local",
                          style: TextStyle(fontSize: 25, color: Colors.black87),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    // baxolash
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Text(
                            "123",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "|",
                            style:
                            TextStyle(color: Colors.black87, fontSize: 10),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Wiev",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
