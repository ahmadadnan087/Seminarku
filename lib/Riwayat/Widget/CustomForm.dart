import 'package:flutter/material.dart';
import 'package:seminarku_1/Riwayat/Widget/DialogBox.dart';


class CustomForm extends StatefulWidget {
@override
_CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
static var _keyValidationForm = GlobalKey<FormState>();
TextEditingController _textEditConName = TextEditingController();
TextEditingController _textEditConEmail = TextEditingController();
TextEditingController _textEditConPassword = TextEditingController();
TextEditingController _textEditConConfirmPassword = TextEditingController();
bool isPasswordVisible = false;
bool isConfirmPasswordVisible = false;

@override
void initState() {
isPasswordVisible = false;
isConfirmPasswordVisible = false;
super.initState();
}

@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.grey,
  body: SingleChildScrollView(
    child: Padding(
        padding: EdgeInsets.only(top: 32.0),
        child: Column(
          children: <Widget>[
            getWidgetImageLogo(),
            getWidgetFromCard(),
          ],
        )),
  ),
);
}

Widget getWidgetImageLogo() {
return Container(
    alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 32),
      child: Icon(Icons.ac_unit),
    ));
 }

Widget getWidgetFromCard() {
final FocusNode _passwordEmail = FocusNode();
final FocusNode _passwordFocus = FocusNode();
final FocusNode _passwordConfirmFocus = FocusNode();

return Padding(
  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
  child: Card(
    color: Color(0xff5da698),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    elevation: 10.0,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _keyValidationForm,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                'Pembayaran',
                style: TextStyle(
                    fontSize: 30.0, color: Colors.black),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            ), 
            
            Column(
              
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              Text("Total: Rp. 0 ", maxLines: 2, style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)),
                              Text(""),
 
                             
                            ],
                          ),// title: login
            Container(
              child: TextFormField(
                controller: _textEditConName,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: _validateUserName,
                onFieldSubmitted: (String value) {
                  FocusScope.of(context).requestFocus(_passwordEmail);
                },
                decoration: InputDecoration(
                    labelText: 'Full name',
                    //prefixIcon: Icon(Icons.email),
                    icon: Icon(Icons.perm_identity)),
              ),
            ), //text field : user name
            Container(
              child: TextFormField(
                controller: _textEditConEmail,
                focusNode: _passwordEmail,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: _validateEmail,
                onFieldSubmitted: (String value) {
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                decoration: InputDecoration(
                    labelText: 'Email',
                    //prefixIcon: Icon(Icons.email),
                    icon: Icon(Icons.email)),
              ),
            ), //text field: email
            
            Container(
              margin: EdgeInsets.only(top: 32.0),
              width: double.infinity,
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.black,
                elevation: 5.0,
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Bayar',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: () {
                 showDialog(context: context,
                  builder: (BuildContext context){
                  return DialogBox(

                    title: "Pembayaran Berhasil",
                    descriptions: "",
                    text: "Ya",
                  );
                  }
                );       
          
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ), //button: login
            
          ],
        ),
      ),
    ),
  ),
);
}

String _validateUserName(String value) {
return value.trim().isEmpty ? "Name can't be empty" : null;
}

String _validateEmail(String value) {
Pattern pattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regex = new RegExp(pattern);
if (!regex.hasMatch(value)) {
  return 'Invalid Email';
} else {
  return null;
}
}

String _validatePassword(String value) {
return value.length < 5 ? 'Min 5 char required' : null;
}

String _validateConfirmPassword(String value) {
return value.length < 5 ? 'Min 5 char required' : null;
}


}