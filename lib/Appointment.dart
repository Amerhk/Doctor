import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/home.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xFFFFFFFF),
          title: Text(
            "Appointment",
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    height: 300,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xfff3f5f6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Dr.amerr",
                                        style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "hi my name is amer hk work ",
                                        style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(50.0)),
                                child: Image.asset("image/12.png"),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 100,
                            left: 20,
                            right: 20,
                            child: Row(
                              children: [
                                Container(
                                    height: 120,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                25.0)),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Points",
                                            style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          Text(
                                            "600+",
                                            style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                    color: Colors.amberAccent,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          )
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  height: 120,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              25.0)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Experience",
                                          style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                        Text(
                                          "10yrs+",
                                          style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            top: 240,
                            right: 20,
                            left: 20,
                            bottom: 10,
                            child: Container(
                              height: 30,
                              width: 300,
                              child: RaisedButton(
                                splashColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: Colors.blue,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeA()),
                                ) ,
                                child: Center(
                                  child: Text("Book Appointment",
                                      style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold))),
                                ),
                              ),
                            ))
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Color(0xfff3f5f6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("About Doctor",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Use the online image color picker right to select a color and get the HTML Color Code of this",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 180,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xfff3f5f6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Upcoming schedule",
                                        style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 50,
                            left: 10,
                            right: 10,
                            child: Row(
                              children: [
                                Container(
                                    height: 100,
                                    width: 360,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                25.0)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 80,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.deepOrangeAccent,
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(25.0)),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "WID",
                                                style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "11",
                                                style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Heart",
                                              style: GoogleFonts.openSans(
                                                  textStyle: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.w600)),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "9:00 am",
                                              style: GoogleFonts.openSans(
                                                  textStyle: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.w600)),
                                            )
                                          ],
                                        ),
                                        SizedBox(width: 60,),
                                        IconButton(icon: Icon(Icons.call,color:Colors.green ,), onPressed: (){}),
                                        SizedBox(width: 30,),
                                        IconButton(icon: Icon(Icons.video_call,color:Colors.blueAccent ,), onPressed: (){}),

                                      ],
                                    ),
                                ),
                              ],
                            ),
                ),
                      ],
                    )),
              ],
            ),
          ),
        ),
    );
  }
}
