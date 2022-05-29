import 'package:flutter/material.dart';
import 'package:namozni_organaman/pages/strings.dart';
import 'package:namozni_organaman/pages/youtubeplayer.dart';

class ForMen extends StatefulWidget {
  static const String id = "formen";

  const ForMen({Key? key}) : super(key: key);

  @override
  State<ForMen> createState() => _ForMenState();
}

class _ForMenState extends State<ForMen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: stringPage().screencolor,
      appBar: AppBar(
        title: Text("Namoz o'qish (erkaklar uchun)"),
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
                                  name: stringPage().forman[index],
                                  title: "UOBVlsZrrCI",
                                  about: stringPage().duolar),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().forman[index],
                                  title: "KEnDKj9jo-0",
                                  about: stringPage().duolar),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().forman[index],
                                  title: "B6RxssjqayI",
                                  about: stringPage().duolar),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().forman[index],
                                  title: "Zvvk1-BXkkk",
                                  about: stringPage().duolar),
                            ),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForVideo(
                                  name: stringPage().forman[index],
                                  title: "UWo-XEu_Mbo",
                                  about: stringPage().duolar),
                            ),
                          );
                        }
                      },
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF087232),
                            ),

                            // color: Colors.teal[100 * (index % 9)]

                            child: Center(
                              child: Text(
                                stringPage().names[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28),
                              ),
                            ),
                          ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   crossAxisAlignment: CrossAxisAlignment.center,
                          //   children: [
                          //     Row(
                          //       mainAxisAlignment: MainAxisAlignment.end,
                          //       children: [
                          //         Container(
                          //           decoration: BoxDecoration(
                          //               color: Colors.black.withOpacity(0.4),
                          //               borderRadius: BorderRadius.only(
                          //                   bottomRight: Radius.circular(20),
                          //                   topLeft: Radius.circular(20))),
                          //           padding:
                          //               EdgeInsets.only(left: 10, right: 10),
                          //           child: Text(
                          //             stringPage().titles[index],
                          //             style: TextStyle(
                          //               color: Colors.white,
                          //               fontWeight: FontWeight.bold,
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
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
