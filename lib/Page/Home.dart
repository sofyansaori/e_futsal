import 'package:e_futsal/Page/Booking.dart';
import 'package:e_futsal/Widget/Header_Top.dart';
import 'package:e_futsal/Page/Login.dart';
import 'package:e_futsal/main.dart';
import 'package:e_futsal/Page/UserProfile.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  // final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderTop(text: 'DASHBOARD'),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(25),
              crossAxisCount: 2,
              children: <Widget>[
                // HeaderTop(text: 'HOME'),
                // SizedBox(
                //   height: 30.0,
                // ),
                Card(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    splashColor: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/images/profil.png'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("PROFILE",
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/images/jadwal.png'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("SCHEDULE",
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Booking()));
                    },
                    splashColor: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/images/booking.png'),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("BOOKING",
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/images/laporan.png'),
                          SizedBox(
                            height: 10.0,),
                          Text("REPORT",
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            width: 570,
            height: 70,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff7CB342),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Icon(
                Icons.power_settings_new,
                color: Colors.black,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
