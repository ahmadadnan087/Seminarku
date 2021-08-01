import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seminarku_1/theme.dart';

class PostingSeminar extends StatefulWidget {
  PostingSeminar({
      Key key
    }

  ): super(key: key);

  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State < PostingSeminar > {

  @override Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Posting Seminar',
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

      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
              child: ListView(
                children: < Widget > [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        fillColor: colorOne,           
                        labelText: "Judul",      
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        fillColor: colorOne,           
                        labelText: "Kategori",      
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        fillColor: colorOne,           
                        labelText: "Waktu",      
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        fillColor: colorOne,           
                        labelText: "Tempat",      
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        fillColor: colorOne,           
                        labelText: "Deskripsi",      
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      ),
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