import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seminarku_1/theme.dart';

class EditProfile extends StatefulWidget {
  EditProfile({
      Key key
    }

  ): super(key: key);

  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State < EditProfile > {

  @override Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Edit Profile',
          style: TextStyle(fontSize: 20.0,
            color: Color(0xFF545D68))),
        actions: < Widget > [IconButton(icon: Icon(Icons.share_outlined, color: Color(0xFF545D68)),
          onPressed: () {}

          ,
        ), ],
      ),
      body: profileView() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget profileView() {
    return Column(children: < Widget > [Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: Stack(children: < Widget > [CircleAvatar(radius: 70,
            child: ClipOval(child: Image.asset('assets/images/avatar.png', height: 150, width: 150, fit: BoxFit.cover, ), ),
          ),
          Positioned(bottom: 1, right: 1, child: Container(height: 40, width: 40,
            child: Icon(Icons.add_a_photo, color: Colors.white, ),
            decoration: BoxDecoration(color: colorOne,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          ))
        ], ), ),

      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
              child: ListView(
                children: < Widget > [
                  TextFormField(cursorColor: Theme.of(context).cursorColor,
                    initialValue: 'Erna Nadira',
                    decoration: InputDecoration(icon: Icon(Icons.person),
                      labelText: 'Nama Pengguna',
                      labelStyle: TextStyle(color: colorOne, ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: colorOne), ),
                    ),
                  ),

                  TextFormField(cursorColor: Theme.of(context).cursorColor,
                    initialValue: 'diranadira0901@gmail.com',
                    decoration: InputDecoration(icon: Icon(Icons.email),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: colorOne, ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: colorOne), ),
                    ),
                  ),

                  TextFormField(cursorColor: Theme.of(context).cursorColor,
                    initialValue: ' ',
                    decoration: InputDecoration(icon: Icon(Icons.vpn_key),
                      labelText: 'Kata Sandi',
                      labelStyle: TextStyle(color: colorOne, ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: colorOne), ),
                    ),
                  ),

                  TextFormField(cursorColor: Theme.of(context).cursorColor,
                    initialValue: ' ',
                    decoration: InputDecoration(icon: Icon(Icons.vpn_key),
                      labelText: 'Konfirmasi Kata Sandi',
                      labelStyle: TextStyle(color: colorOne, ),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: colorOne), ),
                    ),
                  ),
                  

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(height: 50, width: 300,
                          child: Align(child: Text('Save',
                            style: TextStyle(color: Colors.white70, fontSize: 20), ), ),
                          decoration: BoxDecoration(color: colorOne,
                            borderRadius: BorderRadius.all(Radius.circular(20), )),
                        ),
                      ),
                    ), )
                ], ),
          ), ))
    ], );
  }
}