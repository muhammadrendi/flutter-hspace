import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/models/ImageRooms.dart';
import 'package:flutter_application_hspace/screens/details_room/detaills_screen.dart';
import 'package:flutter_application_hspace/screens/home/components/views_image_room.dart';

class ViewContent extends StatefulWidget {
  const ViewContent({
    Key key,
  }) : super(key: key);

  @override
  _ViewContentState createState() => _ViewContentState();
}

class _ViewContentState extends State<ViewContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              viewContent.length,
              (index) => ViewsImageRooms(
                    roomImages: viewContent[index],
                    press: () => Navigator.pushNamed(
                        context, DetailsScreen.routeName,
                        arguments: ImagesViewContent(
                            imagesContent: viewContent[index])),
                  ))
        ],
      ),
    );
  }
}
