import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/screens/splash/components/button_light.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Image.asset(
          "assets/images/background-splash.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.66),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SvgPicture.asset("assets/icons/logo.svg"),
                SizedBox(height: 20),
                Text("HSPACE",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900)),
                SizedBox(height: 60),
                Text(
                  "Making the workplace \nfor we ways to support your \nteam work.",
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                ButtonLight(
                  text: "Let's Tour",
                  icon: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        )
      ],
    );
  }
}
