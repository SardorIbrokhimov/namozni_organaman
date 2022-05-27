import 'package:flutter/material.dart';
import 'package:namozni_organaman/pages/duolar.dart';
import 'package:namozni_organaman/pages/forMen.dart';
import 'package:namozni_organaman/pages/forWomen.dart';
import 'package:namozni_organaman/pages/maruzalar.dart';
import 'package:namozni_organaman/pages/namoz_time.dart';
import 'package:namozni_organaman/pages/strings.dart';
import 'package:namozni_organaman/pages/tasbeh.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maincolor = Color(0xFF007437);
  Color screencolor = Color(0xFF0C8744);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(stringPage().homename),
        centerTitle: true,
        backgroundColor: Color(0xFF007437),
      ),
      backgroundColor: Color(0xFF0C8744),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15,bottom: 20),
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
                              builder: (context) => WebViewExample(),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Duolar(),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForMen(),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForWomen(),
                            ),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tasbeh(),
                            ),
                          );
                        }else if (index == 5) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MaruzalarPage(),
                            ),
                          );
                        }
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF087232),
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
                childCount: stringPage().list.length,
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

Future _launchUrl() async {
  final Uri _url = Uri.parse('https://namozvaqti.uz/');
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
