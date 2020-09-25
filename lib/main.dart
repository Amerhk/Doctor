import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dachbord.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Center(
              child: Text("Dector List" , style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: Color(0xff363a45),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),),
              ),

              SizedBox(
                height:20,
              ),
              GridDashboard()
            ],
          ),

        ],
      ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              BottomNavigationDotBar (
                  items: <BottomNavigationDotBarItem>[

              BottomNavigationDotBarItem(icon: Icons.map, onTap: () { }),
              BottomNavigationDotBarItem(icon: Icons.alarm_add, onTap: () {  }),
              BottomNavigationDotBarItem(icon: Icons.timer, onTap: () { }),
              BottomNavigationDotBarItem(icon: Icons.add, onTap: () {  }),


                  ]
    ),
            ],
          ),
        ),
//
    );
  }
}
