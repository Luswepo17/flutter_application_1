import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool? check1 = false, check2 = true, check3 = false;
  final _fullnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  late String _password;

  double _strength = 0;

  RegExp numReg = RegExp(r".*[0-9].*");

  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  String _displayText = '';

  void _checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      setState(() {
        _strength = 0;
      });
    } else if (_password.length < 6) {
      setState(() {
        _strength = 1 / 4;
      });
    } else if (_password.length < 8) {
      setState(() {
        _strength = 2 / 4;
      });
    } else {
      if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
        setState(() {
          _strength = 3 / 4;
        });
      } else {
        setState(() {
          _strength = 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(56, 163, 165, 1),
              Color.fromRGBO(87, 204, 153, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
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
                        image: const AssetImage("assets/images/506768.jpg"))),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 150,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'ONLINE PAYMENT SYSTEM',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: SizedBox(
                                    height: 3,
                                    width: 420,
                                    child: Divider(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Enabling users, to make payments\nand avoid long queues easier, by facilitating online payments',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Begin\nYour Journey\nWith Us Today.',
                                    style: TextStyle(
                                        fontSize: 45,
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
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    const Text(
                                      'START FOR FREE',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Create A New Account',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Already have an acoount?',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: RichText(
                                              text: TextSpan(
                                                  text: ' Log in',
                                                  style: const TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.blue,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {})),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 500,
                                      height: 100,
                                      child: TextField(
                                          controller: _fullnameController,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.abc,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                            hintText: '',
                                            labelText: 'Name',
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
                                          )),
                                    ),
                                    SizedBox(
                                      width: 500,
                                      height: 100,
                                      child: TextField(
                                          controller: _emailController,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.email_rounded,
                                              size: 30,
                                              color: Colors.white,
                                            ),
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
                                          )),
                                    ),
                                    SizedBox(
                                      width: 500,
                                      height: 100,
                                      child: TextField(
                                          controller: _passwordController,
                                          onChanged: (value) =>
                                              _checkPassword(value),
                                          obscureText: true,
                                          obscuringCharacter: '*',
                                          decoration: InputDecoration(
                                            hintText: 'Password',
                                            hintStyle: const TextStyle(
                                                color: Colors.grey),
                                            prefixIcon: const Icon(
                                              Icons.password_rounded,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                            fillColor: Colors.transparent,
                                            filled: false,
                                            labelStyle:
                                                const TextStyle(fontSize: 10),
                                            contentPadding:
                                                const EdgeInsets.only(left: 30),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.transparent),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 10,
                                      width: 490,
                                      child: LinearProgressIndicator(
                                        value: _strength,
                                        backgroundColor: Colors.grey[300],
                                        color: _strength <= 1 / 4
                                            ? Colors.red
                                            : _strength == 2 / 4
                                                ? Colors.yellow
                                                : _strength == 3 / 4
                                                    ? Colors.lightGreenAccent
                                                    : Colors.green,
                                        minHeight: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(children: [
                                      SizedBox(
                                        width: 470,
                                        height: 60,
                                        child: CheckboxListTile(
                                          //checkbox positioned at left
                                          value: check3,
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              check3 = value;
                                            });
                                          },
                                          title: const Text(
                                            "By creating an account you agree to our Privacy policy \n Terms of Service and Notification Setting",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ]),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent,
                                          boxShadow: []),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 200),
                                        child: ElevatedButton(
                                          onPressed: () => {},
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.blueAccent,
                                              onPrimary: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          child: Container(
                                            width: 120,
                                            height: 40,
                                            child: const Center(
                                              child: Text(
                                                'Sign Up',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
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
      ),
    );
  }
}
