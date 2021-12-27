import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.white,
      title: "About Me",
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              //colors: [Color(0xff007991), Color(0xff78ffd6)],
              //colors: [Color(0xff159957), Color(0xfff155799)],
              //colors: [Color(0xFF0f3443), Color(0xff34e89e)],
              //colors: [Color(0xff373B44), Color(0xff4286f4)],
              //colors: [Color(0xfffc4a1a), Color(0xfff7b733)],
              //colors: [Color(0xff1c92d2), Color(0xfff2fcfe)],
              //colors: [Color(0xff67B26F), Color(0xff4ca2cd)],
              colors: [Color(0xffffffff), Color(0xffffffff)]),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white30,
                  radius: 105,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/kelle.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                    width: 120,
                    child: Divider(
                      height: 1,
                      color: Colors.white24,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text("Mert Can YILMAZ",
                    style: GoogleFonts.exo2(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Self-taught Flutter Developer",
                  style: GoogleFonts.exo2(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  softWrap: true,
                ),
                const SizedBox(height: 10),
                Text(
                  "Based in Antalya, Turkey",
                  style: GoogleFonts.exo2(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  softWrap: true,
                ),
                const SizedBox(height: 10),
                Text("#flutterdev",
                    style: GoogleFonts.exo2(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
                const SizedBox(height: 30),
                const SizedBox(
                    width: 80,
                    child: Divider(
                      height: 1,
                      color: Colors.white24,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Connect With Me",
                  style: GoogleFonts.exo2(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          html.window
                              .open("https://github.com/mertcandev", "GitHub");
                        },
                        child: SizedBox(
                            height: 25,
                            child: Image.asset("assets/github_logo_black.png")),
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              "https://www.linkedin.com/in/mertcandev",
                              "LinkedIn");
                        },
                        child: SizedBox(
                            height: 30,
                            child: Image.asset("assets/linkedin_logo1.png")),
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              "https://twitter.com/mertcandev", "Twitter");
                        },
                        child: SizedBox(
                            height: 30,
                            child: Image.asset("assets/twitter_logo.png")),
                      ),
                      InkWell(
                        onTap: () {
                          html.window
                              .open("mailto:mertcanylmaz@gmail.com", "e-mail");
                        },
                        child: SizedBox(
                            height: 30,
                            child: Image.asset("assets/mail_logo.png")),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
