/*
Created by Axmadjon Isaqov on 14:19:11 20.07.2022
© 2022 @axi_dev
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///Pdp ui1
class PdpLoginUiPage extends StatefulWidget {
  static const String path = '/pdp_login_ui';
  const PdpLoginUiPage({super.key});

  @override
  State<PdpLoginUiPage> createState() => _PdpLoginUiPageState();
}

class _PdpLoginUiPageState extends State<PdpLoginUiPage> with SingleTickerProviderStateMixin{

 TextEditingController _emailcomtroller = new TextEditingController();
 TextEditingController _passwordcomtroller = new TextEditingController();


_doLogin(){

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ///background widget

          /// foreground widget
          foregroundWidget,
        ],
      ),
    );
  }

  Widget get foregroundWidget {
    return Column(
      children: [
        //login text
        Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    text: "Login\n",
                    style: TextStyle(fontSize: 35),
                    children: [
                      TextSpan(
                          text: 'Welcome Back', style: TextStyle(fontSize: 18))
                    ]),
              ),
            )),
        //fields  and buttons
        Expanded(
            flex: 9,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(53))),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 25,
                              spreadRadius: 3,
                              color: Colors.grey[400]!),
                        ]),
                    child: Column(
                      children: [
                        ///email field
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8, right: 8, top: 8),
                        ),
                        const Divider(
                          thickness: 1,
                        ),

                        ///password field
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, bottom: 8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  ///login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: CupertinoButton(
                            color: const Color(0xFF2E7D31),
                            borderRadius: BorderRadius.circular(30),
                            onPressed: (){},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.apple,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///text button
                  TextButton(
                    child: const Text("Login with SMS"),
                    onPressed: () {
                      Navigator.pushNamed(context, "test_page");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///Facebook button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            child: customButton(
                                text: "Facebook",
                                onPress: () {},
                                color: const Color(0xFF2096F3))),
                        const SizedBox(
                          width: 20,
                        ),

                        ///github button
                        Expanded(
                            child: customButton(
                                text: 'Github',
                                color: Colors.black,
                                onPress: () {}))
                      ],
                    ),
                  ),
                ]),
              ),
            ))
      ],
    );
  }

  ///field widget
  Widget customField(
      {required TextEditingController? controller,
        String? hintText,
        bool? isObscure = false}) {
    return TextField(
      controller: controller!,
      maxLength: isObscure! ? 8 : null,
      obscureText: isObscure,
      decoration: InputDecoration(
        isDense: true,
        counter: const SizedBox.shrink(),
        hintText: hintText!,
        border: InputBorder.none,
      ),
    );
  }

//custom button
  Widget customButton(
      {String? text, Color? color, GestureTapCallback? onPress}) {
    return SizedBox(
        height: 50,
        // width: 150,
        child: CupertinoButton(
            color: color,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            borderRadius: BorderRadius.circular(30),
            onPressed: onPress,
            child: Text(
              text!,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )));
  }

}
