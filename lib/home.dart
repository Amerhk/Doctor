import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';

import 'Appointment.dart';

class HomeA extends StatefulWidget {
  @override
  _HomeAState createState() => _HomeAState();
}

class _HomeAState extends State<HomeA> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50.0)),
                child: Image.asset("image/1.png"),
              ),
              Spacer(),
              Container(
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50.0)),
                child: Image.asset("image/12.png"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 300,
              width: 400,
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
                                  "Let`s Find Your",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Doctor",
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),

                              ],
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 20,
                      right: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                      BorderRadiusDirectional.circular(30.0)),
                              child: Center(
                                child: Image.asset("image/teeth.png" ,fit: BoxFit.cover, height: 35,width: 35,),
                              )),

                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                  BorderRadiusDirectional.circular(30.0)),
                              child: Center(
                                child: Image.asset("image/hart.png" ,fit: BoxFit.cover, height: 35,width: 35,),
                              )),
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                  BorderRadiusDirectional.circular(30.0)),
                              child: Center(
                                child: Image.asset("image/eys.png" ,fit: BoxFit.cover, height: 35,width: 35,),
                              )),
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                  BorderRadiusDirectional.circular(30.0)),
                              child: Center(
                                child: Image.asset("image/Injection.jpg" ,fit: BoxFit.cover, height: 35,width: 35,),
                              )),
                        ],
                      )),
                  Positioned(
                      top: 200,
                      right: 20,
                      left: 20,
                      bottom: 50,
                      child: Container(
                        height: 30,
                        width: 300,
                        decoration:BoxDecoration(
                            color: Colors.white,

                            borderRadius:
                            BorderRadiusDirectional.circular(10.0)
                        ) ,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                            hintText: "Search",
                            icon: Icon(Icons.search)
                                
                          ),
                        )
                      ))
                ],
              )),
          SizedBox(height: 30,),
              Container(
                  height: 150,
                  width: 400,
                  decoration:BoxDecoration(
                      color: Color(0xfff3f5f6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius:
                      BorderRadiusDirectional.circular(10.0)
                  ) ,
                  child: Column(
                    children: [
                    SizedBox(height: 10,),
                    Row(
                        children: [
                          SizedBox(width: 10,),

                          Text("October , 2020",style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),),
                        ],
                      ),
                        SizedBox(height: 20,
                      ),

                      DatePicker(
                        DateTime.now(),
                        width: 60,
                        height: 80,
                        controller: _controller,
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Colors.blue,
                        selectedTextColor: Colors.white,

                        onDateChange: (date) {
                          // New date selected
                          setState(() {
                            _selectedValue = date;
                          });
                        },
                      ),
                    ],
                  ),
              ),
          SizedBox(height: 30,),
          Container(
            height: 150,
            width: 400,
            decoration:BoxDecoration(
                color: Color(0xfff3f5f6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius:
                BorderRadiusDirectional.circular(10.0)
            ) ,
            child: Column(
              children: [

                Row(
                  children: [
                    SizedBox(width: 10,),
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
                                      fontWeight: FontWeight.bold)),
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
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadiusDirectional.circular(50.0)),
                      child: Image.asset("image/12.png"),
                    ),
                    SizedBox(width: 10,),



                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text(
                      " name is amer hk work ",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 70,),

                    InkWell(
                     
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text("Appointment",
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
      ],
    ),
        ));
  }
}
