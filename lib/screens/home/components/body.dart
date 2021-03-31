import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/screens/home/components/others_room.dart';
import 'package:flutter_application_hspace/screens/home/components/view_content.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_header.dart';
import 'navigation_header.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 20),
              //Explore you room.
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Explore",
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        " your room.",
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  NavigationHeader(),
                  SizedBox(height: 20),
                  ViewContent(),
                  SizedBox(height: 10),
                  //Others room
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Others room.",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  OthersRooms()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
