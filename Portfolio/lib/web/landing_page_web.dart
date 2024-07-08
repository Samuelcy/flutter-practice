import 'package:flutter/material.dart';

import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 25.0, color: Colors.black),
          title: Row(
            children: [
              Spacer(flex: 3),
              TabsWeb("Home"),
              Spacer(),
              TabsWeb("Works"),
              Spacer(),
              TabsWeb("Blog"),
              Spacer(),
              TabsWeb("About"),
              Spacer(),
              TabsWeb("Contact"),
              Spacer(),
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            height: heightDevice - 56, // height of appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15),
                    ),
                    SizedBox(height: 15),
                    SansBold("Samuel Han", 55.0),
                    Sans("Flutter developer", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Sans("sammysan97@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20),
                        Sans("Honolulu, Hawaii", 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images.png"),
                    ),
                  ),
                ),
              ],
            ),
          ), // First Page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/web.jpg", height: heightDevice / 1.7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About Me", 40.0),
                    SizedBox(height: 15),
                    Sans("Hello I am Samuel Han", 15),
                    Sans("I am a developer", 15),
                    Sans("Working in Web and Mobile development", 15),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Flutter", 15.0)),
                        SizedBox(width: 7),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Firebase", 15.0)),
                        SizedBox(width: 7),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Android", 15.0)),
                        SizedBox(width: 7),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("iOS", 15.0)),
                        SizedBox(width: 7),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Windows", 15.0)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ), // Second Page
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/webL.png",
                                height: 200, width: 200),
                            SizedBox(height: 10),
                            SansBold("Web Development", 15)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/app.png",
                                height: 200, width: 200),
                            SizedBox(height: 10),
                            SansBold("Web Development", 15)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/firebase.png",
                                height: 200, width: 200, fit: BoxFit.contain),
                            SizedBox(height: 10),
                            SansBold("Back-end development", 15)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ), // Third Prage
        ]));
  }
}
