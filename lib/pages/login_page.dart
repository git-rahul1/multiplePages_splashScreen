import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = "LoginPage";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Welcome to DevXHub",
              style: TextStyle(fontSize: 28, color: Colors.blue),
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Icon(
              Icons.hail,
              size: 350,
              color: Colors.blue,
            ))
          ],
        ),
      ),
    );
  }
}
