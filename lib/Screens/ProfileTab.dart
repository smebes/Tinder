import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade100,
        ),
        ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: MyClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.725,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(1.0, 10.0), blurRadius: 10.0)]),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: ScreenUtil().setHeight(50.0)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(500.0),
                          child: Image(
                              fit: BoxFit.cover,
                              height: ScreenUtil().setHeight(350.0),
                              width: ScreenUtil().setWidth(430.0),
                              image: const AssetImage('assets/images/abhishekProfile.JPG')),
                        ),
                        SizedBox(height: ScreenUtil().setHeight(10.0)),
                        Text(
                          "Abhishek, 19",
                          style: TextStyle(
                              letterSpacing: 1.1, fontSize: ScreenUtil().setSp(70), fontWeight: FontWeight.w400),
                        ),
                        Expanded(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil().setWidth(165.0),
                                    height: ScreenUtil().setHeight(140.0),
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade50, borderRadius: BorderRadius.circular(100.0)),
                                    child: Icon(
                                      Icons.settings,
                                      size: ScreenUtil().setSp(100),
                                      color: Colors.blueGrey.shade200,
                                    ),
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(10.0)),
                                  Text(
                                    "SETTINGS",
                                    style: TextStyle(color: Colors.blueGrey.shade200, fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: Stack(
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                ),
                                Positioned(
                                  right: 1.0,
                                  bottom: 0.0,
                                  left: 1.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        width: ScreenUtil().setHeight(160),
                                        height: ScreenUtil().setHeight(160),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Theme.of(context).accentColor,
                                                  Theme.of(context).secondaryHeaderColor,
                                                  Theme.of(context).primaryColor
                                                ],
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomRight,
                                                stops: const [0.0, 0.35, 1.0]),
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(150.0)),
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                          size: ScreenUtil().setSp(125.0),
                                        ),
                                      ),
                                      SizedBox(height: ScreenUtil().setHeight(10.0)),
                                      Text(
                                        "ADD MEDIA",
                                        style: TextStyle(color: Colors.blueGrey.shade200, fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: ScreenUtil().setWidth(80.0),
                                  bottom: ScreenUtil().setWidth(62.0),
                                  child: Container(
                                    width: ScreenUtil().setHeight(50),
                                    height: ScreenUtil().setHeight(50),
                                    decoration: BoxDecoration(boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(2.0, 3.0),
                                        blurRadius: 5.0,
                                      )
                                    ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Theme.of(context).accentColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil().setWidth(165.0),
                                    height: ScreenUtil().setHeight(140.0),
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade50, borderRadius: BorderRadius.circular(100.0)),
                                    child: Icon(
                                      Icons.edit,
                                      size: ScreenUtil().setSp(100),
                                      color: Colors.blueGrey.shade200,
                                    ),
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(10.0)),
                                  Text(
                                    "EDIT INFO",
                                    style: TextStyle(color: Colors.blueGrey.shade200, fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 3, child: Container())
              ],
            ),
          ),
        ),
        Positioned(
            bottom: ScreenUtil().setHeight(80.0),
            child: Container(
              height: ScreenUtil().setHeight(350),
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                // height: ScreenUtil().setHeight(300),
                // aspectRatio: 16 / 2,
                // viewportFraction: 0.8,
                // enableInfiniteScroll: true,
                // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                // autoPlayInterval: const Duration(seconds: 2),
                // autoPlayCurve: Curves.fastOutSlowIn,
                // autoPlay: true,
                // enlargeCenterPage: true,
                // pauseAutoPlayOnTouch: const Duration(seconds: 5),
                items: [0, 1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (context) {
                      return Container(
                        width: ScreenUtil().setWidth(900.0),
                        height: ScreenUtil().setHeight(180),
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, offset: Offset(0.0, 5.0), blurRadius: 10.0)
                            ],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              quotes[i].heading,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(65.0),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(15.0),
                            ),
                            Text(
                              quotes[i].baseline,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(40.0),
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54),
                            ),
                          ],
                        )),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: ScreenUtil().setHeight(300),
                  aspectRatio: 16 / 2,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  pauseAutoPlayOnTouch: true,
                ),
              ),
            ))
      ],
    );
  }
}

final Shader linearGradient = LinearGradient(
        colors: [Colors.amber.shade800, Colors.amber.shade600],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: const [0.0, 1.0])
    .createShader(Rect.fromLTWH(0.0, 0.0, ScreenUtil().setWidth(30), ScreenUtil().setHeight(20)));

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.lineTo(0, size.height - ScreenUtil().setHeight(200));
    Offset controlPoint = Offset(size.width / 2, size.height);
    p.quadraticBezierTo(controlPoint.dx, controlPoint.dy, size.width, size.height - ScreenUtil().setHeight(200));
    //p.lineTo(size.width,size.height - ScreenUtil().setHeight(200) );
    p.lineTo(size.width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Quotes {
  final String heading;
  final String baseline;

  Quotes(this.heading, this.baseline);
}

List<Quotes> quotes = [
  Quotes("GET TINDER GOLD", "See who likes you & more!"),
  Quotes("Get matches faster", "Boost your profile once a month!"),
  Quotes("I meant to swipe right", "Get unlimited Rewinds with Tinder Plus!"),
  Quotes("Stand out with Super Likes", "You're 3 times more likely to get a match!"),
  Quotes("Increase your chances", "Get unlimited likes with tinder Plus!"),
  Quotes("Swipe around the world!", "Passport to anywhere with Tinder Plus!"),
];
