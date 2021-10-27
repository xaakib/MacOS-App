import 'package:flutter/material.dart';

class WellPaperScreen extends StatefulWidget {
  const WellPaperScreen({Key? key}) : super(key: key);

  @override
  _WellPaperScreenState createState() => _WellPaperScreenState();
}

class _WellPaperScreenState extends State<WellPaperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Text("data"),
      ),
    );
  }
}
