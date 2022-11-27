import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

class AllIconsPage extends StatefulWidget {
  const AllIconsPage({super.key});

  @override
  State<AllIconsPage> createState() => _AllIconsPageState();
}

class _AllIconsPageState extends State<AllIconsPage> {
  final Map<String, IconData> _iconList = {
    "solidKaaba": FlutterIslamicIcons.solidKaaba,
    "solidAllah": FlutterIslamicIcons.solidAllah,
    "solidMohammad": FlutterIslamicIcons.solidMohammad,
    "solidMosque": FlutterIslamicIcons.solidMosque,
    "solidPrayer": FlutterIslamicIcons.solidPrayer,
    "solidSajadah": FlutterIslamicIcons.solidSajadah,
    "solidDrum": FlutterIslamicIcons.solidDrum,
    "solidCrescentMoon": FlutterIslamicIcons.solidCrescentMoon,
    "solidTasbih2": FlutterIslamicIcons.solidTasbih2,
    "solidPrayingPerson": FlutterIslamicIcons.solidPrayingPerson,
    "solidCommunity": FlutterIslamicIcons.solidCommunity,
    "islam": FlutterIslamicIcons.islam,
    "solidLantern": FlutterIslamicIcons.solidLantern,
    "solidKowtow": FlutterIslamicIcons.solidKowtow,
    "solidQuran": FlutterIslamicIcons.solidQuran,
    "solidCow": FlutterIslamicIcons.solidCow,
    "solidAllah99": FlutterIslamicIcons.solidAllah99,
    "solidDrum2": FlutterIslamicIcons.solidDrum2,
    "sheep": FlutterIslamicIcons.sheep,
    "solidFamily": FlutterIslamicIcons.solidFamily,
    "solidIftar": FlutterIslamicIcons.solidIftar,
    "solidHadji": FlutterIslamicIcons.solidHadji,
    "solidLocationMuslim": FlutterIslamicIcons.solidLocationMuslim,
    "solidMinaret": FlutterIslamicIcons.solidMinaret,
    "mosque": FlutterIslamicIcons.mosque,
    "solidMuslimah": FlutterIslamicIcons.solidMuslimah,
    "solidMuslimah2": FlutterIslamicIcons.solidMuslimah2,
    "solidMuslim": FlutterIslamicIcons.solidMuslim,
    "solidMuslim2": FlutterIslamicIcons.solidMuslim2,
    "solidQibla": FlutterIslamicIcons.solidQibla,
    "solidQibla2": FlutterIslamicIcons.solidQibla2,
    "solidQuran2": FlutterIslamicIcons.solidQuran2,
    "solidSheep": FlutterIslamicIcons.solidSheep,
    "solidTakbir": FlutterIslamicIcons.solidTakbir,
    "solidTasbih": FlutterIslamicIcons.solidTasbih,
    "solidTasbih3": FlutterIslamicIcons.solidTasbih3,
    "solidTasbihHand": FlutterIslamicIcons.solidTasbihHand,
    "solidTawhid": FlutterIslamicIcons.solidTawhid,
    "solidWudhu": FlutterIslamicIcons.solidWudhu,
    "solidZakat": FlutterIslamicIcons.solidZakat,
    "tasbih2": FlutterIslamicIcons.tasbih2,
    "tawhid": FlutterIslamicIcons.tawhid,
    "zakat": FlutterIslamicIcons.zakat,
    "tasbihHand": FlutterIslamicIcons.tasbihHand,
    "tasbih": FlutterIslamicIcons.tasbih,
    "wudhu": FlutterIslamicIcons.wudhu,
    "takbir": FlutterIslamicIcons.takbir,
    "tasbih3": FlutterIslamicIcons.tasbih3,
    "allah99": FlutterIslamicIcons.allah99,
    "allahText": FlutterIslamicIcons.allahText,
    "community": FlutterIslamicIcons.community,
    "allah": FlutterIslamicIcons.allah,
    "cow": FlutterIslamicIcons.cow,
    "crescentMoon": FlutterIslamicIcons.crescentMoon,
    "calendar": FlutterIslamicIcons.calendar,
    "drum2": FlutterIslamicIcons.drum2,
    "family": FlutterIslamicIcons.family,
    "iftar": FlutterIslamicIcons.iftar,
    "drum": FlutterIslamicIcons.drum,
    "hadji": FlutterIslamicIcons.hadji,
    "locationMuslim": FlutterIslamicIcons.locationMuslim,
    "locationMosque": FlutterIslamicIcons.locationMosque,
    "lantern": FlutterIslamicIcons.lantern,
    "kaaba": FlutterIslamicIcons.kaaba,
    "muslim": FlutterIslamicIcons.muslim,
    "muslim2": FlutterIslamicIcons.muslim2,
    "muslimah": FlutterIslamicIcons.muslimah,
    "kowtow": FlutterIslamicIcons.kowtow,
    "mohammad": FlutterIslamicIcons.mohammad,
    "muslimah2": FlutterIslamicIcons.muslimah2,
    "prayer": FlutterIslamicIcons.prayer,
    "prayingPerson": FlutterIslamicIcons.prayingPerson,
    "qibla": FlutterIslamicIcons.qibla,
    "qibla2": FlutterIslamicIcons.qibla2,
    "quran2": FlutterIslamicIcons.quran2,
    "ramadan": FlutterIslamicIcons.ramadan,
    "sajadah": FlutterIslamicIcons.sajadah,
    "quran": FlutterIslamicIcons.quran
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Islamic Icons"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: _iconList.length,
          itemBuilder: (BuildContext ctx, index) {
            var _iconName = _iconList.keys.elementAt(index);
            return Card(
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Name: $_iconName"),
                          content: Text("Icon(FlutterIslamicIcons.$_iconName);",
                              style: const TextStyle(fontSize: 12)),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Icon(_iconList[_iconName], color: Colors.blue, size: 40),
                ),
              ),
            );
          }),
    );
  }
}
