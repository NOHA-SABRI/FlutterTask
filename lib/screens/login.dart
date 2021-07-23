import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/serviceResponse.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 230,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.only(top: 50),
          child: Image.asset("assets/images/logo.png"),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(188)),
              image: DecorationImage(
                image: AssetImage("assets/images/appbarbackground.png"),
                fit: BoxFit.fill,
              )),
        ),
      ),
      ////////////////////////////////////////////////////////
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(60, 60, 60, 30),
              child: Text(
                'تسجيل الدخول كعميل',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            /////////////////////////////////////////
            Padding(
              padding: EdgeInsets.all(10),
              child: Directionality(
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[150],
                    filled: true,
                    hintText: "رقم الجوال",
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            /////////////////////////////////////////
            Padding(
              padding: EdgeInsets.all(10),
              child: Directionality(
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[150],
                    filled: true,
                    hintText: "كلمة المرور",
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.green[600],
                    ),
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                textDirection: TextDirection.rtl,
              ),
            ),

            ////////////////////////////////

            Padding(
              padding: EdgeInsets.only(right: 240),
              child: TextButton(
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  //forgot password screen
                },
              ),
            ),
            //////////////////////////////////////////////

            Padding(
              padding:
                  const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
              child: ElevatedButton(
                child: Text('تسجيل دخول'),
                onPressed: () {
                  Navigator.pushNamed(context, ServiceResponse.id);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    side: BorderSide(color: Colors.lime, width: 1),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    textStyle: TextStyle()),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
              child: ElevatedButton(
                child: Text('تسجيل حساب كعميل جديد'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    side: BorderSide(color: Colors.lime, width: 1),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    textStyle: TextStyle()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
