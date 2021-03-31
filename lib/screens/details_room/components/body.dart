import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/models/ImageRooms.dart';
import 'package:flutter_application_hspace/screens/details_room/components/image_room_details.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({Key key, @required this.imagesContent}) : super(key: key);

  final RoomsImages imagesContent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageRoomDetails(
              imageContent: imagesContent,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Mini Room",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when anunknown printer took a galley of type and scrambled",
                    style: GoogleFonts.getFont("Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                    maxLines: 3,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
