import 'package:flutter/material.dart';
import 'package:seminarku_1/Riwayat/Widget/CustomForm.dart';
import 'package:seminarku_1/theme.dart';

class Blm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          padding: EdgeInsets.all(20),

          children: < Widget > [
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
            Card(
              color: colorOne,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Column(
                  children: < Widget > [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: < Widget > [
                        Container(
                          child: new Image.asset('assets/Poster.jpg'),
                          width: 90.0,
                          height: 130.0,
                        ),
                        SizedBox(width: 15.0, ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: < Widget > [
                            SizedBox(height: 10.0, ),
                            Text("Seminar Nasional Security ", maxLines: 2, style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                            Text(""),
                            Row(
                              children: [
                                Icon(Icons.schedule, color: Colors.white, ),
                                Text(" 25 Juli 2020", style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            SizedBox(height: 10.0, ),
                            Row(
                              children: [
                                Icon(Icons.place_outlined, color: Colors.white, ),
                                Text(" Online via Discord", style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(builder: (context) => CustomForm())
                                    );
                                },
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text("Bayar Sekarang", style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

          ]

        ),
      ),

    );

  }
}