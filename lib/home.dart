import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:salim_first_task/screens/gridDashboard.dart';

//import 'product_info.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),  //ff392850
      body: Column(
        children: <Widget>[
          SizedBox(height: 110),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Production Lines",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Color(0xffa29aac),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  alignment: Alignment.topCenter,
                  icon: Image.asset("images/notification.png", width: 24),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          //TODO Grid Dashboard
          GridDashboard()
        ],
      ),
    );
  }
}

