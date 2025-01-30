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
import 'package:flutter_app/widgets/suggested_action_card.dart';

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
            icon: Icon(CupertinoIcons.moon),
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
              onTap: () => context.push("/settings"),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profil'),
              onTap: () => context.go("/profile"),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.pencil),
              title: const Text('Yazarlar'),
              onTap: () => context.go("/authors"),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.book),
              title: const Text('Kitaplar'),
              onTap: () => context.go("/books"),
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
                  textAlign: TextAlign.center,
                  "Sonsuz Raflarda Kaybolmaya Hazır Mısın?",
                  style: TextStyle(
                    fontSize: 20,
                    color: colors["onSurface"],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: ListView(
                padding: EdgeInsets.all(24),
                children: [
                  SuggestedActionCard(
                    icon: Icons.book,
                    title: "Kitaplar",
                    subtitle: "Kitapları okumaya başlayın",
                    onTap: () => context.push("/books"),
                  ),
                  SizedBox(height: 16),
                  SuggestedActionCard(
                    icon: Icons.person_2_rounded,
                    title: "Yazarlar",
                    subtitle: "Yazarları keşfedin",
                    onTap: () => context.push("/authors"),
                  ),
                  SizedBox(height: 16),
                  SuggestedActionCard(
                    icon: Icons.history,
                    title: "Son Aramalar",
                    subtitle: "Geçmiş aramalarınızı görüntüleyin",
                    onTap: () => context.push("/search"),
                  ),
                  SizedBox(height: 16),
                  SuggestedActionCard(
                    icon: Icons.settings,
                    title: "Ayarlar",
                    subtitle: "Uygulama ayarlarını özelleştirin",
                    onTap: () => context.push("/settings"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomMenu(),
    );
  }
}
