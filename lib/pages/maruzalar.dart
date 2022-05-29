import 'package:flutter/material.dart';
import 'package:namozni_organaman/pages/strings.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../utilites/utilites/maruzalar_strings.dart';
import '../utilites/utilites/youtube_oddiy.dart';

class MaruzalarPage extends StatefulWidget {
  const MaruzalarPage({Key? key}) : super(key: key);

  @override
  State<MaruzalarPage> createState() => _MaruzalarPageState();
}

class _MaruzalarPageState extends State<MaruzalarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: stringPage().screencolor,
      appBar: AppBar(
        backgroundColor: stringPage().maincolor,
        title: Text("Ma'ruzalar"),
        centerTitle: true,

      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return AspectRatio(
                  aspectRatio: 1,
                  child: _item(
                    StringID.id[index],
                    "https://i3.ytimg.com/vi/${StringID.id[index]}/maxresdefault.jpg",
                  ),
                );
              },
              childCount: StringID.id.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2/1.1,
            ),
          ),
        ],
      ),
    );
  }

  _item(videoid, imageUrl) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                return child;
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => YouTubePlayerOddiy(videoID: videoid)),
        );
      },
    );
  }
}
