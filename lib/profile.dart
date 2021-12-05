// import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _colour = const Color(0xffbcbfc3);
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Hello Binaya, \n',
                      style: TextStyle(
                        color: Color(0xff2d3342),
                        fontSize: 20.0,
                      ),
                      children: [
                        TextSpan(
                            text: 'Welcome Back👋',
                            style: TextStyle(
                                color: Color(0xff2d3342),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Color(0xffbcbfc3),
                    backgroundImage: AssetImage(
                      'images/srii.png',
                    ),
                  ),
                ],
              ),
            )
            // search bar
            ,
            const SizedBox(height: 20.0),
            Container(
              height: _height * 0.3,
              width: _width * 0.9,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffb40000),
                    Color(0xff460102),
                  ],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 15,
                      right: _width * 0.05,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Text(
                          '\$',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: const Text(
                      'Balance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 2.0),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 50,
                    child: Text(
                      '\$10,345,235',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0),
                    ),
                  ),
                  Positioned(
                      bottom: -20,
                      left: 20,
                      child: Container(
                        // padding: const EdgeInsets.only(
                        //   right: 7,
                        //   left: 7,
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, right: 7, left: 7),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'WithDraw',
                              style: TextStyle(
                                  color: Colors.white, wordSpacing: 5.0),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xff291f1e),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '\$ 1223493',
                        style: TextStyle(
                            color: Color(0xff2d3342),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Total Income',
                        style: TextStyle(
                          color: Color(0xff2d3342),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '\$ 1223493',
                        style: TextStyle(
                            color: Color(0xff2d3342),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Total Spent',
                        style: TextStyle(
                          color: Color(0xff2d3342),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20.0),
            // horizontal list view
            SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.price_change,
                          color: Colors.amber.shade700,
                          size: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.receipt_rounded,
                          color: Colors.purple.shade400,
                          size: 25,
                        ),
                      ),
                    ),
                    // Text('Bill'),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.pin,
                          color: Colors.green.shade300,
                          size: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        radius: 20.0,
                        // backgroundColor: Colors.white,
                        backgroundColor: Colors.grey.shade200,

                        child: Icon(
                          Icons.more_horiz_rounded,
                          size: 25,
                          color: Colors.blue.shade400,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
