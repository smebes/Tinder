import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder/Models/ChatUser.dart';
import 'package:tinder/Screens/InPersonChatScreen.dart';

class MessagesTab extends StatefulWidget {
  @override
  _MessagesTabState createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {
  late bool _messagesSelected;
  bool _firstVistToFeed = false;
  TextEditingController? _fieldController;

  @override
  void initState() {
    super.initState();
    _messagesSelected = true;
    _fieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: ScreenUtil().setHeight(115.0),
          // color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    _messagesSelected = true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(115.0), vertical: ScreenUtil().setHeight(20.0)),
                  child: Text(
                    "Messages",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(50.0),
                        fontWeight: FontWeight.w500,
                        color: _messagesSelected ? Theme.of(context).primaryColor : Colors.blueGrey.shade200),
                  ),
                ),
              ),
              VerticalDivider(
                width: 0,
                thickness: 2,
                endIndent: ScreenUtil().setHeight(20.0),
                indent: ScreenUtil().setHeight(20.0),
                color: Colors.blueGrey.shade100,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _messagesSelected = false;
                    if (_firstVistToFeed == false) {
                      Future.delayed(
                          Duration(
                            seconds: 3,
                          ), () {
                        _firstVistToFeed = true;
                        setState(() {});
                      });
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(150.0), vertical: ScreenUtil().setHeight(20.0)),
                  child: Text(
                    "  Feed  ",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(50.0),
                        fontWeight: FontWeight.w500,
                        color: _messagesSelected ? Colors.blueGrey.shade200 : Theme.of(context).primaryColor),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Colors.blueGrey.shade50,
        ),
        // Based on which section does it selected .
        _messagesSelected
            ? Expanded(
                child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil().setHeight(30.0),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10.0)),
                    child: TextField(
                      controller: _fieldController,
                      cursorRadius: Radius.circular(10.0),
                      cursorColor: Theme.of(context).primaryColor,
                      style: TextStyle(fontSize: ScreenUtil().setSp(50.0)),
                      decoration: InputDecoration(
                          hintText: "Search ${dummyMsg.length} matches",
                          suffixText: 'Newest  ',
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Theme.of(context).primaryColor,
                          )),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Theme.of(context).accentColor,
                    indent: ScreenUtil().setWidth(120.0),
                    endIndent: ScreenUtil().setWidth(30.0),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(30.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30.0)),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "New Matches",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(45.0),
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).secondaryHeaderColor),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(30.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(250.0),
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20.0)),
                              width: ScreenUtil().setHeight(150),
                              height: ScreenUtil().setHeight(150),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90), color: Colors.blueGrey.shade50),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30.0)),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Messages",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(45.0),
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).secondaryHeaderColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  ),
                  ListBody(
                    children: List.generate(dummyMsg.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => InChatScreen(user: dummyMsg[index])));
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: ScreenUtil().setHeight(230.0),
                              margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(40.0)),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: ScreenUtil().setHeight(180),
                                    width: ScreenUtil().setHeight(180),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image(fit: BoxFit.cover, image: AssetImage(dummyMsg[index].imageURL!)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(25.0),
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${dummyMsg[index].name}',
                                        style:
                                            TextStyle(fontSize: ScreenUtil().setSp(50.0), fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '${dummyMsg[index].message}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: ScreenUtil().setSp(45.0),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Divider(
                                height: 1, indent: ScreenUtil().setWidth(300.0), endIndent: ScreenUtil().setWidth(20.0))
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ))
            : _firstVistToFeed == false
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(),
                        SizedBox(
                          height: ScreenUtil().setHeight(30.0),
                        ),
                        Text(
                          "Loading feeds ...",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(50.0),
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: ScreenUtil().setHeight(100.0),
                      ),
                      Image(
                          width: ScreenUtil().setWidth(600),
                          height: ScreenUtil().setHeight(400),
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sorry.png')),
                      SizedBox(
                        height: ScreenUtil().setHeight(50.0),
                      ),
                      Text(
                        "Check back later",
                        style: TextStyle(
                            wordSpacing: 1.5, fontSize: ScreenUtil().setSp(75.0), fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: ScreenUtil().setWidth(20.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(60.0)),
                        child: Text("We couldn't find any social activity for your matches. Try again later",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(40.0),
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade600)),
                      )
                    ],
                  ))
      ],
    );
  }
}
