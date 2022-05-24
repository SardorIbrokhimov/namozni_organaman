import 'package:flutter/material.dart';
import 'package:namozni_organaman/pages/strings.dart';
import 'package:namozni_organaman/pages/youtubeplayer.dart';

class ForWomen extends StatefulWidget {
  static const String id = "forwomen";

  const ForWomen({Key? key}) : super(key: key);

  @override
  State<ForWomen> createState() => _ForWomenState();
}

class _ForWomenState extends State<ForWomen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: stringPage().screencolor,
      appBar: AppBar(
        title: Text("Namoz o'qish(ayollar uchun)"),
        centerTitle: true,
        backgroundColor: Color(0xFF007437),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return AspectRatio(
                    aspectRatio: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().nomlari[index],
                                  title: "bochi12F45A",
                                  about: "Lorem Ipsum"),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().nomlari[index],
                                  title: "nXauZnrdYPM",
                                  about: "Lorem Ipsum"),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().nomlari[index],
                                  title: "teLfhz4uqXU",
                                  about: "Lorem Ipsum"),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().nomlari[index],
                                  title: "_P8bCizQyh4",
                                  about: "Lorem Ipsum"),
                            ),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().nomlari[index],
                                  title: "Euff3FykivQ",
                                  about: "Lorem Ipsum"),
                            ),
                          );
                        }
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(
                                    stringPage().list[index],
                                  ),
                                  fit: BoxFit.cover),
                            ),

                            // color: Colors.teal[100 * (index % 9)],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.4),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(20))),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Text(
                                      stringPage().titles[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 5,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
