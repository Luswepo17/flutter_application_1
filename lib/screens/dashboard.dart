import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isShown = true;

  void _delete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Please Confirm'),
            content: const Text('Are you sure to Log out?'),
            actions: [
              // The "Yes" button
              TextButton(
                  onPressed: () => Get.to(const Login()),
                  child: const Text('Yes')),
              TextButton(onPressed: () => Get.back(), child: const Text('No'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.grey,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Welcome Back ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 500,
                    height: 100,
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  SizedBox(
                    height: 50,
                    width: 70,
                    child: Expanded(
                      child: TextButton(
                        onPressed: () => {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          fixedSize: const Size(15, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        child: Row(
                          children: [
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                // Do something when a menu item is selected
                                ;
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                PopupMenuItem<String>(
                                  value: '/page1',
                                  child: TextButton(
                                    child: Container(
                                        //  padding: const EdgeInsets.only(top: 0, bottom: 0),
                                        child: Row(children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          Icons.person_outline_sharp,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10.0),
                                          child: const Text(
                                            "Profile",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w100),
                                          ))
                                    ])),
                                    onPressed: () {
                                      Get.toNamed('/page1');
                                    },
                                  ),
                                ),
                                PopupMenuItem<String>(
                                    value: '/page3',
                                    child: SizedBox(
                                      width: 100,
                                      height: 50,
                                      child: TextButton(
                                        onPressed: _isShown == true
                                            ? () => _delete(context)
                                            : null,

                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                            foregroundColor: Colors.blue,
                                            fixedSize: const Size(200, 50),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18))),
                                        // padding: const EdgeInsets.all(0.0),
                                        child: Container(
                                            //  padding: const EdgeInsets.only(top: 0, bottom: 0),
                                            child: Row(children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Icon(
                                              Icons.logout_rounded,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: const Text(
                                                "Logout",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ))
                                        ])),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 15,
                  width: 420,
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: SizedBox(
                    height: 50,
                    width: 300,
                    child: Text(
                      'Make Online Transactions Seamlessly',
                      style: TextStyle(fontFamily: 'Montserrat'),
                    )),
              ),
              Row(
                children: [
                  Container(
                    height: 410,
                    width: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.transparent,
                        image: const DecorationImage(
                            image: AssetImage("assets/images/cashless.png"))),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 410,
                    width: 300,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: TextButton(
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                fixedSize: const Size(200, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            child: Container(
                              child: Row(
                                children: [
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(
                                        Icons.payment_sharp,
                                        color: Colors.blue,
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(left: 10.0),
                                      child: const Text(
                                        " Make Payments",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: TextButton(
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                fixedSize: const Size(200, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            child: Container(
                              child: Row(
                                children: [
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(
                                        Icons.account_balance_wallet_rounded,
                                        color: Colors.blue,
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(left: 10.0),
                                      child: const Text(
                                        "Check Balance",
                                        style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

/**
 * 
 * Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 525,
            width: 120,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.blueGrey.shade300),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'USER NAME',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 200,
                    child: Divider(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        fixedSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Container(
                      child: Row(
                        children: [
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.grid_view_rounded,
                                color: Colors.white,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: const Text(
                                "Payments",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
 */
