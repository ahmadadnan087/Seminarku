import 'package:flutter/material.dart';
import 'package:seminarku_1/login.dart';
import 'package:seminarku_1/theme.dart';

class Daftar extends StatefulWidget {
  static String tag = 'daftar';
  @override
  _DaftarState createState() => new _DaftarState();
}

class _DaftarState extends State<Daftar> {
  static TextEditingController emailController =
      TextEditingController(text: "");
  static TextEditingController passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'seminarku',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/1.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    // final konpassword = TextFormField(
    //   autofocus: false,
    //   obscureText: true,
    //   decoration: InputDecoration(
    //     hintText: 'Konfirmasi Password',
    //     contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    //   ),
    // );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => Login()));
          },
          color: colorOne,
          child: Text('Masuk', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final daftarLabel = TextButton(
      child: Text(
        'Kembali',
        style: TextStyle(color: colorTwo),
      ),
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Login()));
      },
    );

    return Scaffold(
      backgroundColor: colorOne,
      body: Center(
        child: Container(
          width: 330.0,
          height: 500.0,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0))),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              SizedBox(height: 24.0),
              logo,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  'DAFTAR',
                  style: TextStyle(fontSize: 20),
                )),
              ),
              SizedBox(height: 10.0),
              email,
              SizedBox(height: 8.0),
              password,
              // SizedBox(height: 8.0),
              // konpassword,
              SizedBox(height: 5.0),
              loginButton,
              daftarLabel
            ],
          ),
        ),
      ),
    );
  }
}
