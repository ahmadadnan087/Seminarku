import 'package:flutter/material.dart';
import 'package:seminarku_1/List_Seminar/Verifikasi_List.dart';
import 'package:seminarku_1/theme.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename, cookieslot, cookietempat;

  CookieDetail({
    this.assetPath,
    this.cookieprice,
    this.cookiename,
    this.cookieslot,
    this.cookietempat
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('List Seminar',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF545D68))),
        actions: < Widget > [
          IconButton(
            icon: Icon(Icons.share_outlined, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 10.0),
          SizedBox(height: 10.0),
          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
              height: 300.0,
              width: 100.0,
              fit: BoxFit.contain
            )
          ),
          SizedBox(height: 10.0),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                      color: Colors.black, size: 16.0),
                    Text(cookieslot,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0)),
                  ],
                ),
            ),
          ),

          SizedBox(height: 5.0),
          Center(
            child: Text(cookiename,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0)),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(color: Colors.black, height: 1.0)
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 2),
              child: Text('Panitia'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Kategori'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Hari'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Tempat'),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(color: Colors.black, height: 1.0)
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Deskripsi', style: TextStyle(fontWeight: FontWeight.bold), ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Seminar adalah pertemuan guna membahas sebuah masalah yang dilakukan secara ilmiah. Pada umumnya seminar menampilkan satu atau beberapa pembicaraan dengan makalah atau kertas kerja yang sebelumnya sudah di persiapkan.'),
          ),

          SizedBox(height: 20.0),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),   
            child: FlatButton(
              minWidth: 300,
              onPressed: () {
                showDialog(context: context,
                  builder: (BuildContext context) {
                    return CustomAlert();
                  });
              },
              color: colorOne,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                
              ),
              child: Text("Daftar Sekarang", style: TextStyle(color: Colors.white)),
            ),
          ),
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}