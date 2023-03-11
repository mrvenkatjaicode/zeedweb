import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NewDesktopScreen extends StatefulWidget {
  const NewDesktopScreen({super.key});

  @override
  State<NewDesktopScreen> createState() => _NewDesktopScreenState();
}

class _NewDesktopScreenState extends State<NewDesktopScreen> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/mainvideo.mp4");
    _controller!.addListener(() {
      setState(() {});
    });
    _controller!.setVolume(0);
    _controller!.setPlaybackSpeed(0.2);
    _controller!.setLooping(true);
    _controller!.initialize().then((value) {
      setState(() {});
    });
    _controller!.play();
    // Ensure the first frame is shown after the video is initialized
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Transform.scale(
      scale: 1.5,
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: VideoPlayer(_controller!)),
    ));
  }
}
