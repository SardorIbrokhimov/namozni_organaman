import 'package:namozni_organaman/pages/duolar.dart';
import 'package:namozni_organaman/pages/forMen.dart';
import 'package:namozni_organaman/pages/forWomen.dart';
import 'package:namozni_organaman/pages/namoz_time.dart';

import 'package:namozni_organaman/pages/tasbeh.dart';
import 'package:namozni_organaman/pages/youtubeplayer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class stringPage {
  String womenbomdod =
      "https://i.ytimg.com/an_webp/bochi12F45A/mqdefault_6s.webp?du=3000&sqp=COD3sZQG&rs=AOn4CLBodowSPItj5yrOODv3sCnxOf_BIA";
  Color maincolor = Color(0xFF007437);
  Color screencolor = Color(0xFF0C8744);
  String homename = "Namoz o'qishni o'rganish";
  String home = "";
  List list = [
    "assets/images/vaqtlari.png",
    "assets/images/xatolik.jpg",
    "assets/images/xatolik.jpg",
    "assets/images/xatolik.jpg",
    "assets/images/xatolik.jpg",
    "assets/images/xatolik.jpg",
    "assets/images/xatolik.jpg",
  ];

  List pages = [
    WebViewExample.id,
    Duolar.id,
    ForMen.id,
    ForWomen.id,
    Tasbeh.id,
    ForVideo.id,
  ];

  List titles = [
    "Bomdod",
    "Peshin",
    "Asr",
    "Shom",
    "Xufton",
  ];

  List nomlari = [
    "Bomdod namozi (ayollar uchun)",
    "Peshin namozi (ayollar uchun)",
    "Asr namozi (ayollar uchun)",
    "Shom namozi (ayollar uchun)",
    "Xufton namozi (ayollar uchun)",
  ];

  List forman = [
    "Bomdod namozi (erkaklar uchun)",
    "Peshin namozi (erkaklar uchun)",
    "Asr namozi (erkaklar uchun)",
    "Shom namozi (erkaklar uchun)",
    "Xufton namozi (erkaklar uchun)",
  ];
}

Future _launchUrl() async {
  final Uri _url = Uri.parse('https://flutter.dev');
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}



/*
https://i.ytimg.com/an_webp/UOBVlsZrrCI/mqdefault_6s.webp?du=3000&sqp=CKbNspQG&rs=AOn4CLAA3nPwOXFYas7Hmn9GEEB_mcE9iw
https://i.ytimg.com/an_webp/KEnDKj9jo-0/mqdefault_6s.webp?du=3000&sqp=CI-lspQG&rs=AOn4CLAnXa36mqZmZ8FqR691jUpeDFvj_A
https://i.ytimg.com/an_webp/B6RxssjqayI/mqdefault_6s.webp?du=3000&sqp=CPixspQG&rs=AOn4CLA3AEgTmUyx-VtVQBSOEUPqJeu0oA
https://i.ytimg.com/an_webp/Zvvk1-BXkkk/mqdefault_6s.webp?du=3000&sqp=CPunspQG&rs=AOn4CLCzAFnlxFCjJCmjfNmlJ3jMx_MjVg
https://i.ytimg.com/an_webp/UWo-XEu_Mbo/mqdefault_6s.webp?du=3000&sqp=CPa0spQG&rs=AOn4CLCQS2O0cyCwDPcAZun5DQ9ltJv9lw








 */
