import 'package:flutter/material.dart';
import 'package:flutter_application_hspace/routes.dart';
import 'package:flutter_application_hspace/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter  Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              centerTitle: true,
              color: Colors.black,
              elevation: 0,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: TextTheme(
                  headline6:
                      TextStyle(color: Color(0xFF8B8B8B), fontSize: 18)))),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
