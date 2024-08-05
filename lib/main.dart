import 'package:flutter/material.dart';
import 'package:freshy_app/modules/home/homepage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static Map<int, Color> color = {
    100: Color.fromARGB(1, 88, 188, 107),
    50: Color.fromARGB(1, 88, 188, 107),
    200: Color.fromARGB(1, 88, 188, 107),
    300: Color.fromARGB(1, 88, 188, 107),
    400: Color.fromARGB(1, 88, 188, 107),
    500: Color.fromARGB(1, 88, 188, 1070),
    600: Color.fromARGB(1, 88, 188, 107),
    700: Color.fromARGB(1, 88, 188, 107),
    800: Color.fromARGB(1, 88, 188, 107),
    900: Color.fromARGB(1, 88, 188, 107),
  };
  MaterialColor primeColor = MaterialColor(0X70450C, color);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Grab Mobile',
        theme: ThemeData(
          primarySwatch: primeColor,
        ),
        initialRoute: "/home",
        routes: <String, WidgetBuilder>{
          "/home": (context) => const Homepage(),
        },
      );
      }
    );
  }
}
