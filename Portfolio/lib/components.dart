import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, this.text, this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        height: 50.0,
        minWidth: 200.0,
        color: Colors.black,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

class TabsWeb extends StatefulWidget {
  final title;
  final route;
  const TabsWeb({super.key, this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          // print("Entered");
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          // print("False");
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.roboto(
                  shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, -8),
                      )
                    ],
                  fontSize: 25.0,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent)
              : GoogleFonts.roboto(color: Colors.black, fontSize: 20.0),
          child: Text(widget.title),
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;

  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class TextForm extends StatelessWidget {
  final text;
  final containerWidth;
  final hintText;
  final maxLines;
  const TextForm(
      {Key? key,
      @required this.text,
      @required this.containerWidth,
      @required this.hintText,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        SizedBox(height: 5.0),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            maxLines: maxLines == null ? null : maxLines, // if null, default 1
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;
  const AnimatedCardWeb(
      {super.key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 4))
        ..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller); // Properties attached to controller

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.tealAccent)),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.imagePath,
                  height: widget.height == null ? 200.0 : widget.height,
                  width: widget.width == null ? 200.0 : widget.width,
                  fit: widget.fit == null ? null : widget.fit),
              SizedBox(height: 10),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15)
            ],
          ),
        ),
      ),
    );
  }
}

// class AnimatedCardMobile extends StatefulWidget {
//   const AnimatedCardMobile({super.key});
//
//   @override
//   State<AnimatedCardMobile> createState() => _AnimatedCardMobileState();
// }
//
// class _AnimatedCardMobileState extends State<AnimatedCardMobile> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;

  const AbelCustom(
      {Key? key,
      @required this.text,
      @required this.size,
      this.color,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
          fontSize: size,
          color: color == null ? Colors.black : color,
          fontWeight: fontWeight == null ? FontWeight.normal : fontWeight),
    );
  }
}
