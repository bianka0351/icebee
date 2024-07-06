import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favoritescreen extends StatelessWidget {
  const favoritescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY FAVORITE',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You Don\'t Have Anything In  Your Favorite List',
          style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      
    );
  }
}
