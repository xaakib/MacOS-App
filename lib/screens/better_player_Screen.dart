import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class BetterScreenPlayer extends StatefulWidget {
  @override
  _BetterScreenPlayerState createState() => _BetterScreenPlayerState();
}

class _BetterScreenPlayerState extends State<BetterScreenPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example player"),
      ),
      body: AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer.network(
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }
}
