import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/icon.png",
              width: 150,
              height: 200,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email', icon: Icon(Icons.email))),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password', icon: Icon(Icons.lock)),
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(14.0),
                ),
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onCheck(value);
                  },
                ),
                Text('Remember Me', style: TextStyle(fontSize: 16))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: _changeText,
              textColor: Colors.white,
              color: Colors.indigo[800],
              splashColor: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: _onRegister,
                child: Text('Register New Account',
                    style: TextStyle(fontSize: 16))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: _onTap,
                child: Text('Forgot Account', style: TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }

  void _onCheck(bool value) {
    setState(() {
      _isChecked = true;
    });
  }

  void _changeText(){
    print("Login");
  }

  void _onRegister(){
    print("Register New Account");
  }

  void _onTap(){
    print("Forgot Password");
  }
}
