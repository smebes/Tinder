import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder/Models/tinder_clone_icons.dart';
import 'package:tinder/Screens/MessagesTab.dart';
import 'package:tinder/Screens/ProfileTab.dart';
import 'package:tinder/Screens/TinderTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;
  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
    _tabcontroller?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 1,
          title: TabBar(indicatorColor: Colors.transparent, controller: _tabcontroller, tabs: [
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                child: Center(
                  child: Icon(
                    Tinder_clone.iconfinder_icons_user2_1564535,
                    color: _tabcontroller?.index == 0 ? Theme.of(context).primaryColor : Colors.grey,
                    size: ScreenUtil().setSp(80.0),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                child: Center(
                  child: Icon(
                    Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
                    color: _tabcontroller?.index == 1 ? Theme.of(context).primaryColor : Colors.grey,
                    size: ScreenUtil().setSp(80.0),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(ScreenUtil().setWidth(20.0)),
                child: Center(
                  child: Icon(
                    Tinder_clone.iconfinder_message_01_186393,
                    color: _tabcontroller?.index == 2 ? Theme.of(context).primaryColor : Colors.grey,
                    size: ScreenUtil().setSp(80.0),
                  ),
                ),
              ),
            ),
          ]),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabcontroller,
          children: <Widget>[ProfileTab(), TinderTab(), MessagesTab()],
        ));
  }
}
