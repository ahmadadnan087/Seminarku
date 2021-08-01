import 'package:flutter/material.dart';
import 'package:seminarku_1/auth_services.dart';
import 'auth_provider.dart';
import 'package:seminarku_1/theme.dart';
import 'daftar.dart';

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email tidak boleh kosong' : null;
  }
}

class PasswordFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Password tidak boleh kosong' : null;
  }
}

enum FormType {
  login,
  register,
}

class Login extends StatefulWidget {
  const Login({this.onSignedIn});
  final VoidCallback onSignedIn;

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String _email, _password;
  FormType _formType = FormType.login;

  bool validateAndSave() {
    final FormState form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        final BaseAuth auth = AuthProvider.of(context).auth;
        if (_formType == FormType.login) {
          final String userId =
              await auth.signInWithEmailAndPassword(_email, _password);
          print('Signed in: $userId');
        } else {
          final String userId =
              await auth.createUserWithEmailAndPassword(_email, _password);
          print('Registered user: $userId');
        }
        widget.onSignedIn();
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  // void moveToRegister() {
  //   formKey.currentState.reset();
  //   setState(() {
  //     _formType = FormType.register;
  //   });
  // }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

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
      key: Key('email'),
      autofocus: false,
      validator: EmailFieldValidator.validate,
      onSaved: (String value) => _email = value,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      key: Key('password'),
      validator: PasswordFieldValidator.validate,
      onSaved: (String value) => _password = value,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          color: colorOne,
          key: Key('signIn'),
          child: Text('Log In', style: TextStyle(color: Colors.white)),
          onPressed: validateAndSubmit,
        ),
      ),
    );

    final daftarLabel = TextButton(
      child: Text(
        'Daftar',
        style: TextStyle(color: colorTwo),
      ),
      key: Key('register'),
      // onPressed: moveToRegister,
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Daftar()));
      },
    );

    return Scaffold(
      backgroundColor: colorOne,
      body: Center(
        child: Container(
          width: 330.0,
          height: 440.0,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0))),
          child: Form(
            key: formKey,
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
                    'LOGIN',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                SizedBox(height: 10.0),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 5.0),
                loginButton,
                daftarLabel,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
