import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shield/constant.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid 19',
        theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: TextTheme(
            body1: TextStyle(color: kBodyTextColor),
          ),
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(left: 40, top: 50, right: 20),
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xffDAA520), Color(0XffDAA520)],//
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/virus.png'))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/coronadr.svg",
                          width: 230,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                        Positioned(
                            top: 20,
                            left: 150,
                            child: Text(
                              "All you need \nis to stay at home.,",
                              style: kHeadingTextStyle.copyWith(
                                  color: Colors.white),
                            )),
                        Container()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Care',
                    style: TextStyle(color: Colors.white),
                  ),),
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              FlatButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Immunity',
                    style: TextStyle(color: Colors.white),
                  ),),
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              FlatButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Senitization',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                color: Colors.green,
              ),


            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xFFE5E5E5))),
            child: Row(
              children: <Widget>[
                SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                    value: "India",
                    items: ['India', 'Bangladesh', 'United States', 'Japan']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Case Update", style: kTitleTextstyle),
                          TextSpan(
                            text: "\nLatest update May 14",
                            style: TextStyle(color: kTextLightColor),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See details ",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 30,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(6),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kInfectedColor.withOpacity(.26),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color:kInfectedColor),
                              ),
                              width: 2,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "81970",
                            style: TextStyle(
                              fontSize: 30,
                              color: kInfectedColor,
                            ),
                          ),
                          Text(
                            "Infected",
                            style: kSubTextStyle,
                          )
                        ],
                      ),
                      SizedBox(
                          width:20),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(6),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kRecovercolor.withOpacity(.26),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color:kInfectedColor),
                              ),
                              width: 2,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "27920",
                            style: TextStyle(
                              fontSize: 30,
                              color: kRecovercolor,
                            ),
                          ),
                          Text(
                            "Recovered",
                            style: kSubTextStyle,
                          )
                        ],
                      ),
                      SizedBox(
                          width:20),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(6),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kInfectedColor.withOpacity(.26),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(color:kDeathColor),
                              ),
                              width: 2,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "2649",
                            style: TextStyle(
                              fontSize: 30,
                              color: kDeathColor,
                            ),
                          ),
                          Text(
                            "Deaths",
                            style: kSubTextStyle,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height-100, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
