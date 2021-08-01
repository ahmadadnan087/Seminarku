import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seminarku_1/Profile%20Pengguna/Edit_profile.dart';
import 'package:seminarku_1/Profile Pengguna/Panitia.dart';
import 'package:seminarku_1/theme.dart';
//import 'package:seminarku_1/List_Seminar/Home.dart';
import 'package:seminarku_1/auth_provider.dart';
import 'package:seminarku_1/auth_services.dart';

class Profile extends StatefulWidget {
  const Profile({this.onSignedOut});
  final VoidCallback onSignedOut;

  Future<void> _signOut(BuildContext context) async {
    try {
      final BaseAuth auth = AuthProvider.of(context).auth;
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text('Profile',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon:
                Icon(Icons.favorite_border_outlined, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: profileView(),
      backgroundColor:
          colorFour, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/avatar.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Erna Nadira',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: FlatButton(
            minWidth: 300,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Panitia();
                  });
            },
            color: colorOne,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text("Masuk Sebagai Panitia",
                style: TextStyle(color: Colors.white)),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Container(
                        height: 50,
                        child: Container(
                          color: Colors.white,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 240, 0),
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(color: colorThree),
                                  ),
                                ),
                                Icon(Icons.navigate_next_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Container(
                        height: 50,
                        child: Container(
                          color: Colors.white,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 150, 0),
                                  child: Text(
                                    'Verifikasi Sebagai Panitia',
                                    style: TextStyle(color: colorThree),
                                  ),
                                ),
                                Icon(Icons.navigate_next_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Container(
                        height: 50,
                        child: Container(
                          color: Colors.white,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 245, 0),
                                  child: Text(
                                    'Notifikasi',
                                    style: TextStyle(color: colorThree),
                                  ),
                                ),
                                Icon(Icons.navigate_next_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _signOut(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                      child: Container(
                        height: 50,
                        child: Container(
                          color: Colors.white,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 262, 0),
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(color: colorThree),
                                  ),
                                ),
                                Icon(Icons.navigate_next_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
