import 'package:flutter/material.dart';
import 'package:product/Assignment/OTP_Screen/OTPscreen.dart';

import 'item_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PRODUCTS',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/user.jpg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.deepOrange.shade600,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Hi Hemangi!',
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Text(
                      'Are you looking for quality products? you are at the righ place, continue your shopping .',
                      style: TextStyle(color: Colors.white, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Container(
                  //   // height: 50,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.only(
                  //           topRight: Radius.circular(30),
                  //           topLeft: Radius.circular(30))),
                  // ),
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 5),
                              color: Colors.deepOrange.shade600
                                  .withOpacity(.2),
                              blurRadius: 5),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search Products',
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Theme
                                    .of(context)
                                    .primaryColor,
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Transform.translate(
                offset: const Offset(0, -50),
                child: Column(
                  children: [
                    ItemProduct("p1"),
                    ItemProduct("p2"),
                    ItemProduct("p3"),
                    ItemProduct("p1"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        backgroundColor:  Colors.deepOrange.shade600,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (Context) {
            return OTPscreen();
          },
          ),
          ).then((value) => null);
        },
      ),
    );
  }
}
