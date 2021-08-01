import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seminarku_1/Profile%20Pengguna/Panitia_HistoryPosting.dart';
import 'package:seminarku_1/Profile%20Pengguna/Posting_seminar.dart';
import 'package:seminarku_1/Profile%20Pengguna/Profile.dart';
import 'package:seminarku_1/theme.dart';

class Panitia extends StatefulWidget {
  Panitia({
      Key key
    }

  ): super(key: key);

  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State < Panitia > {

  @override Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Panitia',
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
    return Column(children: < Widget > [
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
            child: Stack(
              children: < Widget > [
                CircleAvatar(
                  radius: 70,
                  child: ClipOval(child: Image.asset('assets/images/avatar.png', height: 150, width: 150, fit: BoxFit.cover, ), ),
                ),
              ],
            ),
        ),
        Text(
          'Erna Nadira',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

      Expanded(
          child: ListView(
            children: [
              Column(
                children: < Widget > [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostingSeminar(),
                        ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                                      padding: const EdgeInsets.fromLTRB(0, 0, 197, 0),
                                        child: Text('Posting Seminar', style: TextStyle(color: colorThree), ),
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
                          builder: (context) => HistoryPosting(),
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
                                      padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                                        child: Text('History Posting Seminar', style: TextStyle(color: colorThree), ),
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
    ], );
  }
}