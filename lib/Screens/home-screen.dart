import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject_icebee/constant.dart';
import 'package:myproject_icebee/tabs/baked-goods-tab.dart';
import 'package:myproject_icebee/tabs/donuts-tab.dart';
import 'package:myproject_icebee/tabs/drinks-tab.dart';
import 'package:myproject_icebee/tabs/sweets-tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                )),
            TabBar(
              tabAlignment: TabAlignment.start,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              labelColor: buttoncolor,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'Donuts'),
                Tab(text: 'Sweets'),
                Tab(text: 'Baked Goods'),
                Tab(text: 'Drinks'),
              ],
              isScrollable: true,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  donutstab(),
                  sweetstab(),
                  bakedgoodstab(),
                  drinkstab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
