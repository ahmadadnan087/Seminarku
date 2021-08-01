import 'package:flutter/material.dart';
import 'package:seminarku_1/List_Seminar/Seminar_Detail.dart';
import 'package:seminarku_1/theme.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: < Widget > [
          SizedBox(height: 5.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.8,
              children: < Widget > [
                _buildCard('Busines Management', ' 5 Mei 2021', 'assets/Poster.jpg', ' 100 Tersisa', ' Online Via Discord',
                  false, false, context),
                _buildCard('Seminar Medis', ' 25 April 2021', 'assets/Poster2.jpg', ' 227 Tersisa', ' Polibatam',
                  true, false, context),
                _buildCard('Seminar Medis', ' 9 April 2021', 'assets/Poster2.jpg', ' 372 Tersisa', ' Online Via Discord',
                  false, true, context),
                _buildCard('Busines Management', ' 13 April 2021', 'assets/Poster.jpg', ' 27 Tersisa', ' Online Via Discord',
                  false, false, context),
              ],
            )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String tanggal, String imgPath, String slot, String tempat, bool added,
    bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CookieDetail(
              assetPath: imgPath,
              cookieprice: tanggal,
              cookieslot: slot,
              cookiename: name,
              cookietempat: tempat,
            )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0)
            ],
            color: colorOne),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isFavorite ?
                  Icon(Icons.favorite, color: Colors.white) :
                  Icon(Icons.favorite_border,
                    color: Colors.white)
                ])),
            Hero(
              tag: imgPath,
              child: Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.contain)))),
            SizedBox(height: 7.0),

            Text(name,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Varela',
                fontSize: 15.0)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(color: Color(0xFFEBEBEB), height: 1.0)),


            Padding(
              padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                      color: Colors.white, size: 12.0),
                    Text(slot,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Varela',
                        fontSize: 12.0)),
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.schedule,
                      color: Colors.white, size: 12.0),
                    Text(tanggal,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Varela',
                        fontSize: 12.0)),
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.place,
                      color: Colors.white, size: 12.0),
                    Text(tempat,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Varela',
                        fontSize: 12.0)),
                  ],
                ),
            ),
          ]))));
  }
}