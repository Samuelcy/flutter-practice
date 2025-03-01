import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(imgPath, color: Colors.black, width: 35),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images.png")),
              ),
              SizedBox(height: 15.0),
              SansBold("Samuel Han", 30.0),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  urlLauncher(
                      "assets/instagram.svg", "https://www.instagram.com/"),
                  urlLauncher("assets/twitter.svg", "https://www.twitter.com/"),
                  urlLauncher("assets/github.svg", "https://www.github.com/"),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 25.0, color: Colors.black),
          title: Row(
            children: [
              Spacer(flex: 3),
              TabsWeb(title: "Home", route: '/'),
              Spacer(),
              TabsWeb(title: "Works", route: '/works'),
              Spacer(),
              TabsWeb(title: "Blog", route: '/blog'),
              Spacer(),
              TabsWeb(title: "About", route: '/about'),
              Spacer(),
              TabsWeb(title: "Contact", route: '/contact'),
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
                Image.asset("assets/web.jpg", height: widthDevice / 1.9),
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
                    AnimatedCardWeb(
                      imagePath: "assets/webL.png",
                      text: "Web Development",
                      fit: BoxFit.contain,
                    ),
                    AnimatedCardWeb(
                        imagePath: "assets/app.png",
                        text: "App Development",
                        fit: BoxFit.contain,
                        reverse: true),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-end Development",
                      fit: BoxFit.contain,
                    ),
                  ],
                )
              ],
            ),
          ), // Third Page
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact Me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                            containerWidth: 350.0,
                            text: "First Name",
                            hintText: "Please type your first name"),
                        SizedBox(height: 15),
                        TextForm(
                            containerWidth: 350.0,
                            text: "Email",
                            hintText: "Please enter your email address"),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            containerWidth: 350.0,
                            text: "Last Name",
                            hintText: "Please type your last name"),
                        SizedBox(height: 15),
                        TextForm(
                            containerWidth: 350.0,
                            text: "Phone Number",
                            hintText: "Please type your phone number"),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  containerWidth: widthDevice / 1.5,
                  text: "Message",
                  hintText: "Please type your message here",
                  maxLines: 10.0,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ]));
  }
}
