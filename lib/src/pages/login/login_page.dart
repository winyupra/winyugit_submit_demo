import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
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
          child: Container(
            padding: const EdgeInsets.all(32),
            height: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ..._buildTextFields(),
                SizedBox(height: 32),
                ..._buildButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    print(
        "CMDev1: Login with (${_usernameController.text}, ${_passwordController.text})");
  }

  void _handleClickReset() {
    _usernameController.text = "";
    _passwordController.text = "";
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "User Name"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(
        onPressed: _handleClickLogin,
        child: Text("Login"),
      ),
      OutlinedButton(
        onPressed: _handleClickReset,
        child: Text("Reset"),
      )
    ];
  }
}
