import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/screens/home/home_screens.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonLight extends StatelessWidget {
  const ButtonLight({
    Key key,
    @required this.text,
    @required this.icon,
  }) : super(key: key);

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                text,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            icon
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
