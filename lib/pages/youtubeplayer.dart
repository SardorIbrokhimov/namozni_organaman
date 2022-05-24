import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ForVideo extends StatefulWidget {
  static const String id = "forvidie";

  const ForVideo(
      {required this.name, required this.title, required this.about});

  final String title;
  final String about;
  final String name;

  @override
  State<ForVideo> createState() => _ForVideoState();
}

class _ForVideoState extends State<ForVideo> {
  double fnSize = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0C8744),
          title: Text(
            widget.name,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            _YouTubePlayer(widget.title),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                widget.about,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontSize: fnSize,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        floatingActionButton: _getFAB());
  }

  Widget _YouTubePlayer(String title) {
    YoutubePlayerController _controller1 = YoutubePlayerController(
      initialVideoId: widget.title,
      flags: YoutubePlayerFlags(
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

  _getFAB() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22),
      backgroundColor: Color(0xff0C8744),
      visible: true,
      curve: Curves.linear,
      children: [
        SpeedDialChild(
          child: Icon(
            Icons.add_circle_outline,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff0C8744),
          onTap: () {
            setState(() {
              fnSize = fnSize * 1.125;
            });
          },
          labelBackgroundColor: Color(0xff0C8744),
        ),
        // FAB 2
        SpeedDialChild(
          child: Icon(
            Icons.remove_circle_outline,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff0C8744),
          onTap: () {
            setState(() {
              fnSize = fnSize / 1.125;
            });
          },
          labelBackgroundColor: Color(0xff0C8744),
        )
      ],
    );
  }
}
