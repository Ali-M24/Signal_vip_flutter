import 'package:flutter/material.dart';
import 'package:signal_vip/password_recovery.dart';
import 'signal_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void NavigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'خوش آمدید',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Icon(Icons.exit_to_app),
                  ],
                ),
                Image(
                  image: AssetImage('assets/images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200.0, 48.0),
                    side: BorderSide(color: Colors.black, width: 1.5),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    NavigateToPage(context, SignalPage());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    minimumSize: Size(200.0, 48.0),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {
                    NavigateToPage(context, PasswordRecovery());
                  },
                  child: Text('رمز عبور خود را فراموش کردید؟'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
