import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0f3443), Color(0xff34e89e)],
        ),
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
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
              width: 100,
              child: Divider(
                height: 1,
                color: Colors.white24,
              )),
          const SizedBox(
            height: 20,
          ),
          Text("Mert Can YILMAZ",
              style: GoogleFonts.exo2(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text("Self-taught Flutter Developer based in Antalya, Turkey.",
              style: GoogleFonts.exo2(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 10),
          Text("#flutterdev",
              style: GoogleFonts.exo2(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w300)),
          const SizedBox(height: 30),
          const SizedBox(
              width: 100,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: SizedBox(
                    height: 35,
                    child: Image.asset("assets/github_logo_black.png")),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {},
                child: SizedBox(
                    height: 40,
                    child: Image.asset("assets/linkedin_logo1.png")),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: SizedBox(
                    height: 40, child: Image.asset("assets/twitter_logo.png")),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
