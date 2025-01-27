//ana ekran
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/core/routes.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Infinity Shares'),
        // backgroundColor: Color.fromARGB(200, 201, 170, 100),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.app),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              color: colors["surface"],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.pencil),
              title: const Text('Yazarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.book),
              title: const Text('Kitaplar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Çıkış Yap'),
              onTap: () => context.go("/login"),
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          // Expanded(
          //   child: Container(
          //     padding: const EdgeInsets.all(1),
          //     child: const Text('Ana Sayfa İçeriği'),
          //   ),
          // ),
          SizedBox(
            width: 150,
            child: DotLottieLoader.fromAsset("assets/motions/home.lottie",
                frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
              if (dotlottie != null) {
                return Lottie.memory(dotlottie.animations.values.single);
              } else {
                return Container();
              }
            }),
          ),
          Expanded(
              child: ListView(
            children: [
              Text(
                "Günün Alıntısı",
                style: TextStyle(
                  fontSize: 24,
                  color: colors["onSurface"],
                ),
              ),
              Text(
                "'Şu uyku insanın sevgilisi gibi bir şey, gelmeyince sinirlendiriyor.' ~Mahalle Kahvesi - Sait Faik Abasıyanık",
                style: TextStyle(
                  fontSize: 15,
                  color: colors["onSecondary"],
                ),
              ),
              Text(
                "Günün Kitabı",
                style: TextStyle(
                  fontSize: 24,
                  color: colors["onSurface"],
                ),
              ),
              Text(
                "Günün Alıntısı",
                style: TextStyle(fontSize: 24, color: colors["onSecondary"]),
              ),
              Text(
                "Günün Alıntısı",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ))
        ],
      ),

      bottomNavigationBar: BottomMenu(),
    );
  }
}
