import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    videoPlayerController =
        VideoPlayerController.asset('assets/videos/vid-1.mp4');
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        showControls: true,
        showControlsOnInitialize: true,
        aspectRatio: 0.5,
        optionsTranslation: OptionsTranslation(
          cancelButtonText: 'لغو',
          playbackSpeedButtonText: 'سرعت ویدیو ',
          subtitlesButtonText: 'زیر نویس',
        ));

    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chewieController != null
          ? SafeArea(
              child: Chewie(controller: chewieController!),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
