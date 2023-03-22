import 'package:flutter/material.dart';

class SignalPage extends StatelessWidget {
  const SignalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ok!'),
            ],
          ),
        ),
      ),
    );
  }
}
