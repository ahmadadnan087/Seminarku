import 'package:flutter/material.dart';
import 'package:seminarku_1/List_Seminar/VerifikasiBerhasil_List.dart';
import 'package:seminarku_1/theme.dart';

class CustomAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
              child: Column(
                children: [
                  Text('Verifikasi Pemesanan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                  SizedBox(height: 20,),
                  Text('"Judul Seminar"', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Text('Panitia  :'),
                      Text('Kategori :'),
                      Text('Hari :'),
                      Text('Tempat :'),
                    ],
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return CustomAlertBerhasil();
                    }
                    
                    );
                  },
                    color: colorOne,
                    child: Text('Pesan', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
          
        ],
      )
    );
  }
}