import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/screens/home/components/icon_navigation_header.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconNavigationHeader(
          svgSrc: "assets/icons/arrow-left.svg",
          press: () {},
        ),
        Text("HSPACE",
            style: GoogleFonts.getFont(
              'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            )),
        IconNavigationHeader(
          svgSrc: "assets/icons/bookmark.svg",
          press: () {},
        ),
      ],
    );
  }
}
