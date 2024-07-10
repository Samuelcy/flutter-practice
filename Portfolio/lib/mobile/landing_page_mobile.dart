import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(text, style: GoogleFonts.openSans(fontSize: 15.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                ),
                child: Image.asset('assets/images.png'),
              ),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Blog", route: '/blog'),
            SizedBox(height: 20.0),
            TabsMobile(text: "About", route: '/about'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Contact", route: '/contact'),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async =>
                      await launch("https://www.instagram.com"),
                  icon: SvgPicture.asset("assets/instagram.svg",
                      color: Colors.black, width: 35.0),
                ),
                IconButton(
                  onPressed: () async =>
                      await launch("https://www.twitter.com"),
                  icon: SvgPicture.asset("assets/twitter.svg",
                      color: Colors.black, width: 35.0),
                ),
                IconButton(
                  onPressed: () async => await launch("https://www.github.com"),
                  icon: SvgPicture.asset("assets/github.svg",
                      color: Colors.black, width: 35.0),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // Intro First Section
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images.png"),
                  ),
                ),
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Samuel Han", 40.0),
                    SansBold("Flutter developer", 20.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("Sammysan97@gmail.com", 15.0),
                        Sans("1-808-xxx-xxxx", 15.0),
                        Sans("Honolulu, Hawaii", 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 90.0),
          // About Me, Second section
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About Me", 35.0),
                Sans(
                    "Hello! I'm Samuel Han I specialize in Flutter Development",
                    15.0),
                Sans("I strive to ensure astounding performance with state of",
                    15.0),
                Sans(
                    "the art security for Android, Ios, Web, Mac, Linux", 15.0),
                SizedBox(height: 10.0),
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //         color: Colors.tealAccent,
                    //         style: BorderStyle.solid,
                    //         width: 2.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text("Flutter",
                    //       style: GoogleFonts.openSans(fontSize: 15.0)),
                    // ),
                    tealContainer("Flutter"),
                    tealContainer("Firebase"),
                    tealContainer("Android"),
                    tealContainer("Windows"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 60.0),
          // Third section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What do I do?", 35.0),
              AnimatedCardWeb(
                imagePath: "assets/webL.png",
                text: "Web Development",
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCardWeb(
                imagePath: "assets/app.png",
                text: "App Development",
                fit: BoxFit.contain,
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCardWeb(
                imagePath: "assets/firebase.png",
                text: "Back-end development",
                width: 300.0,
              ),
              SizedBox(height: 60.0),
              // Contact Fourth section
              Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SansBold("Contact me", 35.0),
                  TextForm(
                    text: "First Name",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please try first name",
                  ),
                  TextForm(
                    text: "Last Name",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please try last name",
                  ),
                  TextForm(
                    text: "Email",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please try email address",
                  ),
                  TextForm(
                    text: "Phone number",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please type your phone number",
                  ),
                  TextForm(
                      text: "Message",
                      containerWidth: widthDevice / 1.4,
                      hintText: "Message",
                      maxLines: 10.0),
                  MaterialButton(
                      onPressed: () {},
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60.0,
                      minWidth: widthDevice / 2.2,
                      color: Colors.tealAccent,
                      child: SansBold("Submit", 20.0))
                ],
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}
