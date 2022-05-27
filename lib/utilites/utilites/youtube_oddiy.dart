import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerOddiy extends StatefulWidget {
  const YouTubePlayerOddiy({required this.videoID});

  final String videoID;

  @override
  State<YouTubePlayerOddiy> createState() => _YouTubePlayerOddiyState();
}

class _YouTubePlayerOddiyState extends State<YouTubePlayerOddiy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _YouTubePlayer(widget.videoID),
    );
  }

  Widget _YouTubePlayer(String id) {
    YoutubePlayerController _controller1 = YoutubePlayerController(
      initialVideoId: id,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    return YoutubePlayer(
      controller: _controller1,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.red,
    );
  }
}
