import 'package:flutter/material.dart';
import 'package:seminarku_1/List_Seminar/Seminar_Detail.dart';
import 'package:seminarku_1/theme.dart';

class CustomAlertBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0)
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
              child: Column(
                children: [
                  Text('Pemesanan Berhasil', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 5,),
                  
                  SizedBox(height: 20,),
                  RaisedButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                    color: colorOne,
                    child: Text('Selesai', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -60,
            child: CircleAvatar(
              backgroundColor: colorOne,
              radius: 60,
              child: Icon(Icons.done, color: Colors.white, size: 50,),
            )
          ),
        ],
      )
    );
  }
}