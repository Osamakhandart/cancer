import 'package:flutter/material.dart';
import 'button.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.purple[500],
          Colors.deepPurpleAccent[100],
          Colors.deepPurpleAccent[100],
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 90, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Image.asset('name'),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                  color: Colors.white,
                ),
                height: size.height / 1.5,
                padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 6.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(189, 128, 255, 3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: [
                          // SizedBox(
                          //   height: size.height / 95,
                          // ),
                          TextFeildown(
                            hint: 'UserName',
                            Sufix: Icon(Icons.perm_identity),
                          ),
                          // SizedBox(
                          //   height: size.height / 55,
                          // ),
                          TextFeildown(
                              hint: 'Password',
                              pass: true,
                              Sufix: Icon(Icons.remove_red_eye)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 15,
                    ),
                    Text('forgot Password?'),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Button(
                      Buttontext: 'Login',
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Button(
                      Buttontext: 'Signup',
                      onpressed: () {
                        Navigator.pushNamed(context, 'signup');
                      },
                    ),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
