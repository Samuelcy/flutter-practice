import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
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
                  backgroundImage: AssetImage("assets/image.png"),
                ),
              ),
              SizedBox(height: 15.0),
              SansBold("Samuel Han", 30.0),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () async {
                        await launch("https://www.instagram.com/");
                      },
                      icon: SvgPicture.asset("assets/instagram.svg",
                          color: Colors.black, width: 35.0)),
                  IconButton(
                      onPressed: () async {
                        await launch("https://www.twitter.com/");
                      },
                      icon: SvgPicture.asset("assets/twitter.svg",
                          color: Colors.black, width: 35.0)),
                  IconButton(
                      onPressed: () async {
                        await launch("https://www.github.com/");
                      },
                      icon: SvgPicture.asset("assets/github.svg",
                          color: Colors.black, width: 35.0)),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/contact_image.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
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
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.0),
                SansBold("Contact Me", 40.0),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextForm(
                          text: "First Name",
                          containerWidth: 350.0,
                          hintText: "Please try first name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          text: "Email",
                          containerWidth: 350.0,
                          hintText: "Please try email",
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextForm(
                          text: "Last Name",
                          containerWidth: 350.0,
                          hintText: "Please type last name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          text: "Phone number",
                          containerWidth: 350.0,
                          hintText: "Please type phonenumber",
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLines: 10,
                ),
                SizedBox(height: 20.0),
                MaterialButton(
                    onPressed: () {},
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20.0)),
                SizedBox(height: 10.0)
              ],
            ),
          ),
        ));
  }
}
