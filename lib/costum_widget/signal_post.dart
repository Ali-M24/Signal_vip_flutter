import 'package:flutter/material.dart';

Widget getSignalPost(
    String title, String imageName, int buy, int sell, String sb, String date) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
          image: AssetImage('assets/images/$imageName.png'),
        ),
      ),
      SizedBox(height: 8.0),
      Text(
        'برای $date $title : سیگنال $sb',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 8.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : $sell',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            width: 6.0,
          ),
          Icon(
            Icons.sell,
            color: Colors.red,
            size: 20.0,
          ),
          SizedBox(
            width: 16.0,
          ),
          Text(
            'خرید روی : $buy',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 6.0,
          ),
          Icon(
            Icons.price_check,
            color: Colors.green,
            size: 24.0,
          ),
        ],
      ),
      Container(
        width: 200.0,
        child: Divider(
          thickness: 1,
          color: Colors.blueGrey,
        ),
      ),
    ],
  );
}
