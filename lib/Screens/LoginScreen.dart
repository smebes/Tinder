import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder/Models/tinder_clone_icons.dart';
import 'package:tinder/Screens/PhoneNumber.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Theme.of(context).accentColor,
                    Theme.of(context).secondaryHeaderColor,
                    Theme.of(context).primaryColor
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 0.35, 1.0])),
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 5,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
                        color: Colors.white,
                        size: ScreenUtil().setSp(180.0),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(10.0)),
                      Text(
                        "tinder",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(140.0),
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      )
                    ],
                  ))),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(ScreenUtil().setWidth(75.0)),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'By clicking "Log in",you agree with our Terms.\n Learn how we process your data in our Privacy  Policy and Cookies Policy',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(50.0)),
                        SizedBox(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(105.0),
                          child: ElevatedButton(
                            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
                            // color: Colors.white,
                            // elevation: 0.0,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumberScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "LOG IN WITH PHONE NUMBER",
                                  style: TextStyle(color: Colors.grey, wordSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(30.0)),
                        SizedBox(
                          width: double.infinity,
                          height: ScreenUtil().setHeight(105.0),
                          child: ElevatedButton(
                            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
                            // color: Colors.white,
                            // elevation: 0.0,
                            onPressed: () {
                              var snkBAr = const SnackBar(content: Text("You can add this feature dev 😍"));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "LOG IN WITH FACEBOOK",
                                  style: TextStyle(color: Colors.grey, wordSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(70.0)),
                        Text(
                          "Trouble logging in?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(50.0),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
