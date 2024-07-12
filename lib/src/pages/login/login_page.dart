

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue.shade500,
      ),
      body: Container(
        width: double.infinity,
        //height: double.infinity,
        color: Colors.white.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: "User Name"),
              ),
              ElevatedButton(
                  onPressed: () => print("CMDev1: Login"),
                  child: Text("Login")
              )
            ],
          ),
        ),
      ),
    );
  }
}