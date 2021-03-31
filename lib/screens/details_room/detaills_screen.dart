import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/models/ImageRooms.dart';
import 'package:flutter_application_hspace/presentation/custom_icons.dart';
import 'package:flutter_application_hspace/screens/details_room/components/body.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key key}) : super(key: key);

  static String routeName = "/details";

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ImagesViewContent arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: Body(
          imagesContent: arguments.imagesContent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CustomIcons.home, size: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CustomIcons.th_list),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CustomIcons.user),
              label: '',
            ),
          ],
          currentIndex: 1,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          elevation: 0,
        ));
  }
}

class ImagesViewContent {
  final RoomsImages imagesContent;

  ImagesViewContent({@required this.imagesContent});
}
