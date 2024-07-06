import 'package:flutter/material.dart';
import 'package:myproject_icebee/constant.dart';
import 'package:myproject_icebee/home-layout-screen.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _myfirstpageState();
}

class _myfirstpageState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homelayoutscreen()));
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangecolor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 300,
              width: 300,
              child: Image.asset(
                'assets/images/bee.png',
                fit: BoxFit.cover,
              )),
          Text(
            'ICE BEE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ],
      )),
    );
  }
}
