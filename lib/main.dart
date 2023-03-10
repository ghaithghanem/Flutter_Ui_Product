import 'package:flutter/material.dart';
import 'package:salim_first_task/home.dart';
import 'package:salim_first_task/screens/bottom_bar.dart';
import 'package:salim_first_task/screens/line_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (BuildContext context) {
          return const BottomBar();
        },
        "/signin": (BuildContext context) {
          return const Line();
        },

      },
    );
  }
}


