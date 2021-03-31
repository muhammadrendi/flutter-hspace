import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationHeader extends StatefulWidget {
  const NavigationHeader({
    Key key,
  }) : super(key: key);

  @override
  _NavigationHeaderState createState() => _NavigationHeaderState();
}

class _NavigationHeaderState extends State<NavigationHeader> {
  List<Map<String, String>> textNavigation = [
    {
      "text": "Mini Room",
    },
    {
      "text": "Family",
    },
    {
      "text": "Dating Room",
    },
    {
      "text": "Private",
    },
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...List.generate(
            textNavigation.length, (index) => navigationContent(index)),
      ]),
    );
  }

  GestureDetector navigationContent(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        child: Text(
          textNavigation[index]["text"],
          style: GoogleFonts.getFont(
            'Poppins',
            fontSize: 12,
            fontWeight: selected == index ? FontWeight.w500 : FontWeight.w300,
            color: selected == index
                ? Colors.black
                : Colors.black.withOpacity(0.60),
          ),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.transparent,
            border: Border.all(
              color: selected == index ? Colors.black : Colors.transparent,
            )),
      ),
    );
  }
}
