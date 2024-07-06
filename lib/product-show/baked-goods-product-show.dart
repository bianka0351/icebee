import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:myproject_icebee/constant.dart';

class bakedgoodsproductshow extends StatefulWidget {
  bakedgoodsproductshow(
      {super.key,
        required this.image,
        required this.text1,
        required this.price});

  final String image;
  final String text1;
  final String price;

  @override
  State<bakedgoodsproductshow> createState() => _bakedgoodsproductshowState();
}

class _bakedgoodsproductshowState extends State<bakedgoodsproductshow> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                'assets/images/baked-goods/${widget.image}.jpg',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              widget.text1,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 220),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: buttoncolor1,
            ),
            height: 50,
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      value++;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.add,
                      size: 30,
                    )),
                Text(
                  '${value}',
                  style: TextStyle(fontSize: 30),
                ),
                IconButton(
                    onPressed: () {
                      value--;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 30,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GroupButton(
                    onSelected: (value, index, isSelected) {},
                    isRadio: true,
                    //maxSelected: ,
                    options: GroupButtonOptions(
                        selectedColor: buttoncolor1,
                        direction: Axis.vertical,
                        unselectedBorderColor: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        unselectedColor: Colors.grey.shade100,
                        buttonWidth: 40),
                    buttons: [' ', '', '']),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Add Coconut',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Add Nutella',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Add Sesame',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 130,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'price',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: buttoncolor1,
                ),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  child: Text(
                    'ADD TO CARD',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  height: 50,
                  minWidth: 175,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
