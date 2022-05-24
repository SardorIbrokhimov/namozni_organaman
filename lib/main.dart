import 'package:flutter/material.dart';
import 'package:namozni_organaman/pages/duolar.dart';
import 'package:namozni_organaman/pages/forMen.dart';
import 'package:namozni_organaman/pages/forWomen.dart';
import 'package:namozni_organaman/pages/home_page.dart';
import 'package:namozni_organaman/pages/namoz_time.dart';
import 'package:namozni_organaman/pages/tasbeh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        WebViewExample.id: (context) => WebViewExample(),
        Duolar.id: (context) => Duolar(),
        ForMen.id: (context) => ForMen(),
        ForWomen.id: (context) => ForWomen(),
        Tasbeh.id: (context) => Tasbeh(),
      },
    );
  }
}
