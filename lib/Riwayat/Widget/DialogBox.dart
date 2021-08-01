import 'dart:ui';
import 'package:seminarku_1/List_Seminar/Home.dart';
import 'package:seminarku_1/Profile%20Pengguna/Widget_Panitia/Selesai.dart';

import './constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seminarku_1/Riwayat/Riwayat.dart';

class DialogBox extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;

  const DialogBox({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          
          padding: EdgeInsets.only(left: Constants.padding,top: Constants.avatarRadius
              + Constants.padding, right: Constants.padding,bottom: Constants.padding
          ),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(color: Colors.black,offset: Offset(0,10),
              blurRadius: 10
              ),
            ]
          ),
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               Icon(
              Icons.check_circle,
              size: 100,
              color: Color(0xff5da698),
            ),
              Text(widget.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 15,),
              Text(widget.descriptions,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
              SizedBox(height: 22,),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: (){
                      Navigator.of(context)
                            .push(
                              MaterialPageRoute(builder: (context) => Riwayat())
                            );
                    },
                    child: Text(widget.text,style: TextStyle(fontSize: 18),)),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}