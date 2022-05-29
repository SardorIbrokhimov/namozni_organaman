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
  String duolar = """SANO DUOSI

  Subhanakallouhumma va bihamdika va tabarokasmuka va taa’la jadduka va la ilaha g‘oyruk.
  Ma'nosi: «Allohim! Sening noming muborakdir. Shon-sharafing ulug'dir. Sendan o'zga iloh yo'qdir».

  FOTIHA SURASI

  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
  الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ
  الرَّحْمَٰنِ الرَّحِيمِ
  مَالِكِ يَوْمِ الدِّينِ
  إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ
  اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ
  صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ
  A’uzu billahi minash shaytonir rojiym. Bismillahir rohmanir rohiym. 
  Al hamdulillahi robbil ‘alamiyn. Ar-rohmanir rohiym. Maliki yavmiddiyn.
  Iyyaka na’budu va iyyaka nasta’iyn. Ihdinas sirotol mustaqiym. Sirotollaziyna
  an’amta ‘alayhim g‘oyril mag‘zubi ‘alayhim valazzolliyn.
  Mazmuni: Allohning dargohidan quvilgan shayton yomonligidan Allohning panohiga qochaman. Mehribon va rahmli Alloh nomi bilan (boshlayman). Hamd olamlar rabbi Allohgakim, (U) mehribon, rahmli va hisob-kitob kuni (Qiyomat)ning egasidir. Sengagina ibodat qilamiz va Sendangina yordam so'raymiz! Bizni shunday to'g'ri yo'lga boshlaginki, (U) Sen in'om (hidoyat) etganlarning (payg'ambarlar, siddiq va shahidlarning) yo'lidir, g'azabga uchragan (Muso qavmidan itoatsizlarining) va adashgan (Iso qavmining «Allohning farzandi bor» deydigan)larning emas!
Fotiha surasidan so'ng bir zam (qo'shimcha) sura o'qiladi.
Yangi o'rganuvchilar quyidagi kichik suralardan birini zam qilishsa bo'ladi:

KAVSAR SURASI

إِنَّا أَعْطَيْنَاكَ الْكَوْثَرَ 
فَصَلِّ لِرَبِّكَ وَانْحَرْ 
إِنَّ شَانِئَكَ هُوَ الْأَبْتَرُ 
Inna a’toynakal-kavsar. Fa solli lirobbika vanhar. Inna shaniaka huval abtar.



Mazmuni: «(Ey Muhammad,) darhaqiqat, Biz Sizga Kavsarni* berdik. Bas, Rabbingiz uchun namoz o'qing va (tuya) so'yib qurbonlik qiling! Albatta, g'animingizning o'zi (barcha yaxshiliklardan) mahrumdir».
(Kavsar — jannatdagi bir ajib daryo yoki hovuzning nomi. Uning suvi asaldan totli, qor va suvdan oq. Undan ichgan kishi abadiy chanqoqlik ko'rmaydi.)

IXLOS SURASI

قُلْ هُوَ اللَّهُ أَحَدٌ 
اللَّهُ الصَّمَدُ 
لَمْ يَلِدْ وَلَمْ يُولَدْ 
وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ 
Qul huvallohu ahad. Allohus-somad. Lam yalid. Va lam yuvlad va lam yakullahu kufuvan ahad.



Mazmuni: (Ey Muhammad,) ayting: «U — Alloh yagonadir. Alloh behojat, (lekin) hojatbarordir. U tug'magan va tug'ilmagan ham. Shuningdek, Unga teng biror zot yo'qdir».

FALAQ SURASI

قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ 
مِنْ شَرِّ مَا خَلَقَ 
وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ 
وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ 
وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ 
Qul a’uzu birobbil falaq. Min sharri ma xolaq. Va min sharri g‘osiqin iza vaqob. Va min sharrin-naffasati fil ‘uqod. Va min sharri hasidin iza hasad.



Ma'nosi: «(Ey Muhammad,) ayting: "Panoh tilab iltijo qilurman tong Parvardigoriga yaratgan narsasi yovuzligidan, tugunchaga dam uruvchi ayollar yovuzligidan hamda hasadchining hasadi yovuzligidan"».

AN-NOS SURASI

قُلْ أَعُوذُ بِرَبِّ النَّاسِ 
مَلِكِ النَّاسِ 
إِلَٰهِ النَّاسِ 
مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ 
الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ 
مِنَ الْجِنَّةِ وَالنَّاسِ 
Qul a’uzu birrobin-nasi malikin-nasi ilahin-nasi min sharril vasvasil xonnas. Allaziy yuvasvisu fiy sudurin-nasi minal jinnati van-nas.



Ma'nosi: «(Ey Muhammad,) ayting: "Panoh tilab iltijo qilurman odamlar Parvardigoriga, odamlar Podshohiga, odamlar Ilohiga yashirin vasvasachi (shayton) yovuzligidanki, (u) odamlarning dillariga vasvasa solur. (O'zi) jinlar va odamlardandir"».
  
  «ATTAHIYYAT» DUOSI

Attahiyyatu lillahi vas-solavatu vattoyyibat. Assalamu ‘alayka ayyuhan-nabiyyu va rohmatullohi va barokatuh. Assalamu ‘alayna va ‘ala ibadillahis-solihiyn. Ashhadu alla ilaha illallohu va ashhadu anna Muhammadan ‘abduhu va rosuluh.

Mazmuni: Mol, badan, til bilan ado etiladigan butun ibodatlar Alloh uchundir. Ey Nabiy! Allohning rahmati va barakoti Sizga bo'lsin. Sizga va solih qullarga Allohning salomi bo'lsin. Iqrormanki, Allohdan o'zga iloh yo'q. Va yana iqrormanki, Muhammad, alayhissalom, Allohning quli va elchisidirlar.
SALOVOT

Allohumma solli ‘ala Muhammadiv-va ‘ala ali Muhammad. Kama sollayta ‘ala Ibrohima va ‘ala ali Ibrohim. Innaka hamidum-majid. Allohumma barik ‘ala Muhammadiv-va ‘ala ali Muhammad. Kama barokta ‘ala Ibrohima va ‘ala ali Ibrohim. Innaka hamidum-majid.

Mazmuni: Allohim, Ibrohim va uning oilasiga rahmat etganing kabi, Muhammad va ul zotning oilasiga rahmat ayla, Sen hamdu maqtovga loyiq va buyuk Zotsan.
Allohim, Ibrohim va uning oilasiga barakotingni ehson etganing kabi Muhammad va ul zotning oilasi ustiga ham barakotingni ehson ayla. Sen hamdu maqtovga loyiq va buyuk Zotsan.

DUO

Robbana atina fid-dunya hasanatav-va fil axiroti hasanatav-va qina azaban-nar.

Mazmuni: «Ey Robbimiz, bizga bu dunyoda ham, oxiratda ham yaxshilikni bergin va bizni do'zax olovi azobidan saqlagin».

  """;
  String womenbomdod =
      "https://i.ytimg.com/an_webp/bochi12F45A/mqdefault_6s.webp?du=3000&sqp=COD3sZQG&rs=AOn4CLBodowSPItj5yrOODv3sCnxOf_BIA";
  Color maincolor = Color(0xFF007437);
  Color screencolor = Color(0xFF0C8744);
  String homename = "Namoz o'qishni o'rganish";
  String home = "";

  List manfoto = ["assets/images"];

  List list = [
    "assets/images/time.png",
    "assets/images/duo.png",
    "assets/images/man.png",
    "assets/images/woman.png",
    "assets/images/tasbeh.png",
    "assets/images/maruza.png",
    "assets/images/xatolik.png",
  ];

  List names = [
    "Bomdod Namozi",
    "Peshin Namozi",
    "Asr\n Namozi",
    "Shom Namozi",
    "Xufton Namozi",
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
    "Namoz vaqtlari",
    "Duolar",
    "Namoz(erkaklar)",
    "Namoz(ayollar)",
    "Tasbeh",
    "Ma'ruzalar",
    "Namozdagi xatoliklar",
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
