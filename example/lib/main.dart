import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Islamic Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true
        )
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(FlutterIslamicIcons.solidAllah, size: 80),
            MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllIconsPage()),
                  );
                },
                child: const Text("All Icons", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}

class AllIconsPage extends StatefulWidget {
  const AllIconsPage({super.key});

  @override
  State<AllIconsPage> createState() => _AllIconsPageState();
}

class _AllIconsPageState extends State<AllIconsPage> {
  final _iconList = <IconData>[
    FlutterIslamicIcons.solidKaaba,
    FlutterIslamicIcons.solidAllah,
    FlutterIslamicIcons.solidMohammad,
    FlutterIslamicIcons.solidMosque,
    FlutterIslamicIcons.solidPrayer,
    FlutterIslamicIcons.solidSajadah,
    FlutterIslamicIcons.solidDrum,
    FlutterIslamicIcons.solidCrescentMoon,
    FlutterIslamicIcons.solidTasbih2,
    FlutterIslamicIcons.solidPrayingPerson,
    FlutterIslamicIcons.solidCommunity,
    FlutterIslamicIcons.islam,
    FlutterIslamicIcons.solidLantern,
    FlutterIslamicIcons.solidKowtow,
    FlutterIslamicIcons.solidQuran,
    FlutterIslamicIcons.allah99,
    FlutterIslamicIcons.allahText,
    FlutterIslamicIcons.community,
    FlutterIslamicIcons.allah,
    FlutterIslamicIcons.cow,
    FlutterIslamicIcons.crescentMoon,
    FlutterIslamicIcons.calendar,
    FlutterIslamicIcons.drum2,
    FlutterIslamicIcons.family,
    FlutterIslamicIcons.iftar,
    FlutterIslamicIcons.drum,
    FlutterIslamicIcons.hadji,
    FlutterIslamicIcons.locationMuslim,
    FlutterIslamicIcons.locationMosque,
    FlutterIslamicIcons.lantern,
    FlutterIslamicIcons.kaaba,
    FlutterIslamicIcons.muslim,
    FlutterIslamicIcons.muslim2,
    FlutterIslamicIcons.muslimah,
    FlutterIslamicIcons.kowtow,
    FlutterIslamicIcons.mohammad,
    FlutterIslamicIcons.muslimah2,
    FlutterIslamicIcons.prayer,
    FlutterIslamicIcons.prayingPerson,
    FlutterIslamicIcons.qibla,
    FlutterIslamicIcons.qibla2,
    FlutterIslamicIcons.quran2,
    FlutterIslamicIcons.ramadan,
    FlutterIslamicIcons.sajadah,
    FlutterIslamicIcons.quran,
    FlutterIslamicIcons.solidAllah99,
    FlutterIslamicIcons.solidDrum2,
    FlutterIslamicIcons.sheep,
    FlutterIslamicIcons.solidCow,
    FlutterIslamicIcons.solidFamily,
    FlutterIslamicIcons.solidIftar,
    FlutterIslamicIcons.solidHadji,
    FlutterIslamicIcons.solidLocationMuslim,
    FlutterIslamicIcons.solidMinaret,
    FlutterIslamicIcons.solidMuslimah,
    FlutterIslamicIcons.solidMuslimah2,
    FlutterIslamicIcons.solidMuslim,
    FlutterIslamicIcons.solidMuslim2,
    FlutterIslamicIcons.solidQibla,
    FlutterIslamicIcons.solidQibla2,
    FlutterIslamicIcons.mosque,
    FlutterIslamicIcons.solidQuran2,
    FlutterIslamicIcons.solidSheep,
    FlutterIslamicIcons.solidTakbir,
    FlutterIslamicIcons.solidTasbih,
    FlutterIslamicIcons.solidTasbih3,
    FlutterIslamicIcons.solidTasbihHand,
    FlutterIslamicIcons.solidTawhid,
    FlutterIslamicIcons.solidWudhu,
    FlutterIslamicIcons.solidZakat,
    FlutterIslamicIcons.tasbih2,
    FlutterIslamicIcons.tawhid,
    FlutterIslamicIcons.zakat,
    FlutterIslamicIcons.tasbihHand,
    FlutterIslamicIcons.tasbih,
    FlutterIslamicIcons.wudhu,
    FlutterIslamicIcons.takbir,
    FlutterIslamicIcons.tasbih3
  ];

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
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: _iconList.length,
          itemBuilder: (BuildContext ctx, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(_iconList[index], color: Colors.blue, size: 40),
              ),
            );
          }),
    );
  }
}