import 'package:flutter/material.dart';
import 'package:seminarku_1/auth_provider.dart';
import 'package:seminarku_1/root_page.dart';
import 'auth_services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      auth: Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: RootPage(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
