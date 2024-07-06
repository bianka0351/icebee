import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject_icebee/Screens/card-screen.dart';
import 'package:myproject_icebee/Screens/favorite-screen.dart';
import 'package:myproject_icebee/Screens/home-screen.dart';
import 'package:myproject_icebee/Screens/order-status-screen.dart';

import 'package:myproject_icebee/constant.dart';


class homelayoutscreen extends StatefulWidget {
  const homelayoutscreen({super.key});

  @override
  State<homelayoutscreen> createState() => _homelayoutscreenState();
}

class _homelayoutscreenState extends State<homelayoutscreen> {
  int currentIndex=0;
  List<Widget>screens=[
    HomeScreen(),
    favoritescreen(),
    cardscreen(),
    orderstatusscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
          height: 46,
          backgroundColor: buttoncolor,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.favorite_outline_outlined, title: 'Favorite'),
            TabItem(icon: Icons.shopping_cart_rounded, title: 'Cart'),
            TabItem(icon: Icons.car_repair, title: 'Order status'),
          ],
          onTap: (int i){
            setState(() {
              currentIndex=i;
            });
          },
        ),
        body: screens[currentIndex]
    );
  }
}
