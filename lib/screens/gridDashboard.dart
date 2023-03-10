import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salim_first_task/screens/line_screen.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Line 1",
      subtitle: "March, Wednesday",
      event: "3 Events",
      img: "images/calendar.png");

  Items item2 = new Items(
    title: "Line 2",
    subtitle: "Bocali, Apple",
    event: "4 Items",
    img: "images/food.png",
  );
  Items item3 = new Items(
    title: "Line 3",
    subtitle: "Lucy Mao going to Office",
    event: "",
    img: "images/map.png",
  );
  Items item4 = new Items(
    title: "Line4",
    subtitle: "Rose favirited your Post",
    event: "",
    img: "images/festival.png",
  );
  Items item5 = new Items(
    title: "Line 5",
    subtitle: "Homework, Design",
    event: "4 Items",
    img: "images/todo.png",
  );
  Items item6 = new Items(
    title: "Line 6",
    subtitle: "",
    event: "2 Items",
    img: "images/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFFEEEEEE;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return GestureDetector(
            onTap: () {
              // Handle item click here
              if (data == item1) {
                // Handle navigation for item1
                Navigator.push(context, MaterialPageRoute(builder: (context) => Line()));
              }
              //Navigator.pushNamed(context, "/signin");
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img, width: 42),
                  SizedBox(height: 14),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;

  Items({required this.title, required this.subtitle, required this.event, required this.img});
}
