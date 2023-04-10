// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: const [
            Color.fromRGBO(216, 30, 91, 1),
            Color.fromRGBO(35, 57, 91, 1),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1200),
            child: SizedBox(
              height: 30,
              width: 100,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent, boxShadow: []),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      width: 90,
                      height: 40,
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 800,
            width: 1300,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken),
                      image: AssetImage("assets/images/1920-1200-491050.jpg"))),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 800,
                        width: 500,
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 150,
                              ),
                              Text(
                                'ONLINE PAYMENT SYSTEM',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat'),
                              ),
                              SizedBox(
                                height: 3,
                                width: 420,
                                child: Divider(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  'Enabling users, to make payments\n and avoid long queues easier, by facilitating online payments',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: SizedBox(
                          height: 800,
                          width: 690,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 150,
                                  ),
                                  Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                  SizedBox(
                                    height: 7,
                                    width: 150,
                                    child: Divider(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 500,
                                    height: 100,
                                    child: TextField(
                                        decoration: InputDecoration(
                                            hintText: '',
                                            labelText: 'E-MAIL',
                                            hintStyle: const TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 30),
                                            fillColor: Colors.transparent,
                                            filled: false,
                                            labelStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            icon: Icon(
                                              size: 30,
                                              Icons.email_sharp,
                                              color: Colors.white,
                                            ))),
                                  ),
                                  SizedBox(
                                    width: 500,
                                    height: 150,
                                    child: TextField(
                                        obscureText: true,
                                        obscuringCharacter: '*',
                                        decoration: InputDecoration(
                                            hintText: '',
                                            labelText: 'Password',
                                            hintStyle: const TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white,
                                                fontSize: 30),
                                            fillColor: Colors.transparent,
                                            filled: false,
                                            labelStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            icon: Icon(
                                              Icons.password_outlined,
                                              size: 30,
                                              color: Colors.white,
                                            ))),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        boxShadow: []),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 200),
                                      child: ElevatedButton(
                                        onPressed: () => {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.blueAccent,
                                            onPrimary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        child: Container(
                                          width: 120,
                                          height: 40,
                                          child: const Center(
                                            child: Text(
                                              'Login',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 240),
                                    child: RichText(
                                        text: TextSpan(
                                            text: 'Forgot Password?',
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {})),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
