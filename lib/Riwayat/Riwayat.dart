import 'package:flutter/material.dart';
import 'package:seminarku_1/theme.dart';
import 'package:seminarku_1/Home1.dart';

import 'package:seminarku_1/Riwayat/Widget/MenujuHari.dart'
as menujuhari;
import 'package:seminarku_1/Riwayat/Widget/Selesai.dart'
as selesai;
import 'package:seminarku_1/Riwayat/Widget/BelumBayar.dart'
as blmbayar;

class Riwayat extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _Riwayat createState() => _Riwayat();
}


class _Riwayat extends State < Riwayat > with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFour,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text('Riwayat Seminar',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF545D68))),
        actions: < Widget > [
          IconButton(
            icon: Icon(Icons.share_outlined, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          indicatorColor: colorOne,
          controller: controller,
          tabs: < Widget > [
            Tab(icon: Text("Selesai", style: TextStyle(color: Colors.black), ), ),
            Tab(icon: Text("Menuju Hari", style: TextStyle(color: Colors.black), ), ),
            Tab(icon: Text("Belum Bayar", style: TextStyle(color: Colors.black), ), ),
          ],

        ),

      ),

      body: TabBarView(
        controller: controller,
        children: < Widget > [
          selesai.Selesai(),
          menujuhari.Menuju(),
          blmbayar.Blm()

        ],
      ),
    );
  }
}