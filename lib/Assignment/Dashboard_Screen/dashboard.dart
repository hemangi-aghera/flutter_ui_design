import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product/Assignment/Product_Screen/homescreen.dart';

import '../Setting_Screen/homePage.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DashBoard Screen")),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.cyan.shade600,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(50)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Hi Hemangi!',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Good Morning',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/user.jpg'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: Colors.cyan.shade600,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  itemDashboard('videos', CupertinoIcons.play_rectangle,
                      Colors.lightBlue,context),
                  itemDashboard(
                      'Analytics', CupertinoIcons.play_rectangle, Colors.green,context),
                  itemDashboard(
                      'Audience', CupertinoIcons.play_rectangle, Colors.purple,context),
                  itemDashboard(
                      'Comments', CupertinoIcons.play_rectangle, Colors.brown,context),
                  itemDashboard(
                      'Revenue', CupertinoIcons.play_rectangle, Colors.indigo,context),
                  itemDashboard(
                      'Upload', CupertinoIcons.play_rectangle, Colors.teal,context),
                  itemDashboard(
                      'About', CupertinoIcons.play_rectangle, Colors.blue,context),
                  itemDashboard('Contact', CupertinoIcons.play_rectangle,
                      Colors.pinkAccent,context),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        backgroundColor: Colors.cyan.shade600,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          ).then((value) => null);
        },
      ),
    );

  }

  itemDashboard(String title, IconData iconData, Color background,context) => Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(title,
                style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      );
}
