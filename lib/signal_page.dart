import 'package:flutter/material.dart';

import 'costum_widget/signal_post.dart';

class SignalPage extends StatelessWidget {
  SignalPage({super.key});

  final PostList = [
    getSignalPost("Safemoon", "s", 12350, 12720, "خرید", "16 آبان"),
    getSignalPost("Ripple", "r", 1348, 2010, "خرید", "15 آبان"),
    getSignalPost("Cosmos", "c", 523, 711, "خرید", "14 آبان"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text(
            'vip اخبار و سیگنال های',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...PostList,
                  SizedBox(height: 20.0),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب کاربری',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20.0)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
