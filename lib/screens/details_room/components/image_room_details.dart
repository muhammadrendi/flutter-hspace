import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/models/ImageRooms.dart';
import 'package:flutter_application_hspace/screens/home/components/icon_navigation_header.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageRoomDetails extends StatefulWidget {
  const ImageRoomDetails({
    Key key,
    @required this.imageContent,
  }) : super(key: key);

  final RoomsImages imageContent;

  @override
  _ImageRoomDetailsState createState() => _ImageRoomDetailsState();
}

class _ImageRoomDetailsState extends State<ImageRoomDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 450,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            child: Image.asset(
              widget.imageContent.images[0],
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 450,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconNavigationHeader(
                      svgSrc: "assets/icons/arrow-left.svg",
                      press: () => Navigator.pop(context),
                    ),
                    IconNavigationHeader(
                      svgSrc: "assets/icons/bookmark.svg",
                      press: () {},
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Text("10",
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                          SizedBox(width: 5),
                          SvgPicture.asset(
                            "assets/icons/icon-start.svg",
                            width: 15,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: SvgPicture.asset("assets/icons/cart-add.svg"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
