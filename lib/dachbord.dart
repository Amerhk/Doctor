
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Appointment.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Calendar",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "lib/12.png");

  Items item2 = new Items(
    title: "Groceries",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "lib/12.png",
  );
  Items item3 = new Items(
    title: "Locations",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "lib/12.png",
  );
  Items item4 = new Items(
    title: "Activity",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "lib/12.png",
  );
  Items item5 = new Items(
    title: "To do",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "lib/12.png",
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "lib/12.png",
  );
  Items item7 = new Items(
    title: "Settings",
    subtitle: "",
    event: "2 Items",
    img: "lib/12.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6,item7];
    var color = 0xFFEEF1F3;
    return Flexible(
      child: GridView.count(
        physics:AlwaysScrollableScrollPhysics() ,
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(0.2),
                   spreadRadius: 5,
                   blurRadius: 7,
                   offset: Offset(0, 3), // changes position of shadow
                 ),
               ],
                  color: Color(color), borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 30,
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25)),
                      child: Image.asset("image/12.png")),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),


                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap:() => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Appointment()),
                    ) ,
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
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}