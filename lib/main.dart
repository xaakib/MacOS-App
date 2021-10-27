import 'package:flutter/material.dart';
import 'package:mocosapp/screens/better_player_Screen.dart';
import 'dart:ui';
import 'package:mocosapp/screens/wellpaper_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: ElevatedButton(
            child: Text("Play"),
            onPressed: () {
              Navigator.push(
                  context,
                  (MaterialPageRoute(
                      builder: (context) => WellPaperScreen(
                          // videoUrl:
                          //   'https://player.vimeo.com/external/637002089.sd.mp4?s=ecb008559d04e02120528106225d3d8ef12c5fa6&profile_id=164&oauth2_token_id=57447761'
                          ))));
            },
          ),
        ),
      ),
    );
  }
}
