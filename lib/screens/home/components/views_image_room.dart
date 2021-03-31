import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/models/ImageRooms.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewsImageRooms extends StatelessWidget {
  const ViewsImageRooms({
    Key key,
    @required this.roomImages,
    @required this.press,
  }) : super(key: key);

  final RoomsImages roomImages;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 15, right: 40),
          child: InkWell(
            onTap: press,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                roomImages.images[0],
                fit: BoxFit.cover,
                width: 240,
                height: 300,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(right: 60),
            width: 50,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(5)),
            child: Padding(
                padding: EdgeInsets.all(7),
                child: SvgPicture.asset("assets/icons/add-book.svg")),
          ),
        )
      ],
    );
  }
}
