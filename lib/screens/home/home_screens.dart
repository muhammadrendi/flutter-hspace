import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/presentation/custom_icons.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(),
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          elevation: 0,
        ));
  }
}
