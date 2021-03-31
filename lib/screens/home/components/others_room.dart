import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/models/ImageRooms.dart';

class OthersRooms extends StatelessWidget {
  const OthersRooms({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(othersRoom.length, (index) => othersRoomView(index))
        ],
      ),
    );
  }

  Container othersRoomView(int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 35),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            othersRoom[index]["images"],
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        )
      ]),
    );
  }
}
