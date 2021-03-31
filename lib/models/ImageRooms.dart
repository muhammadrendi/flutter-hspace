import 'package:flutter/cupertino.dart';

class RoomsImages {
  final List<String> images;

  RoomsImages({
    @required this.images,
  });
}

List<RoomsImages> viewContent = [
  RoomsImages(
    images: ["assets/images/view-content1.png"],
  ),
  RoomsImages(
    images: ["assets/images/view-content2.png"],
  ),
  RoomsImages(
    images: ["assets/images/view-content3.png"],
  ),
  RoomsImages(
    images: ["assets/images/view-content4.png"],
  ),
  RoomsImages(
    images: ["assets/images/view-content5.png"],
  ),
  RoomsImages(
    images: ["assets/images/view-content6.png"],
  ),
];

List<Map<String, String>> othersRoom = [
  {"images": "assets/images/others-room1.png"},
  {"images": "assets/images/others-room2.png"},
  {"images": "assets/images/others-room3.png"},
  {"images": "assets/images/others-room4.png"},
];
