// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/services.dart';

class VideoScreenCondision extends StatefulWidget {
  final String videoUrl;
  // final String coverImage;

  const VideoScreenCondision({Key? key, required this.videoUrl})
      : super(key: key);

  @override
  State<VideoScreenCondision> createState() => _VideoScreenCondisionState();
}

class _VideoScreenCondisionState extends State<VideoScreenCondision> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network, widget.videoUrl);
    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
          fullScreenByDefault: true,
          autoDispose: true,
          // fullScreenByDefault: true,
          deviceOrientationsAfterFullScreen: [
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
          deviceOrientationsOnFullScreen: [
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ],
          controlsConfiguration: BetterPlayerControlsConfiguration(
              overflowMenuCustomItems: [
                BetterPlayerOverflowMenuItem(
                  Icons.account_circle_rounded,
                  "Custom element",
                  () => Navigator.pop(context),
                )
              ],
              loadingWidget: Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
              ),
              showControlsOnInitialize: false,
              enableFullscreen: false),
          autoPlay: true,
        ),
        betterPlayerDataSource: betterPlayerDataSource);
  }

  @override
  void dispose() {
    super.dispose();
    _betterPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 200,
        width: double.infinity,
        child: BetterPlayer(
          controller: _betterPlayerController,
        ),
      ),
    );
  }
}
