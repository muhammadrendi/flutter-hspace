import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/screens/details_room/detaills_screen.dart';
import 'package:flutter_application_hspace/screens/home/home_screens.dart';
import 'package:flutter_application_hspace/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
