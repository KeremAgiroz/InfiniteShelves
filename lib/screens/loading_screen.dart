// açılış ekranımız buraya.
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          Container(
            width: double.infinity,
            child: Column(
              children: [
                // Logo bölümü
                Container(
                  width: 300,
                  height: 350,
                  child: Image.asset(
                    'assets/icons/mavikit.webp',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 30),

                // // Yükleme ikonu
                // const Icon(
                //   CupertinoIcons.arrow_2_circlepath,
                //   size: 40,
                //   color: Colors.white,
                // ),

                const SizedBox(height: 20),

                // // Yükleniyor yazısı
                // const Text(
                //   'Yükleniyor...',
                //   style: TextStyle(
                //     fontSize: 18,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                InkWell(
                  onTap: () => context.go("/home"),
                  child: SizedBox(
                    width: 300,
                    child: DotLottieLoader.fromAsset(
                        "assets/motions/begen.lottie",
                        frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                      if (dotlottie != null) {
                        return Lottie.memory(
                            dotlottie.animations.values.single);
                      } else {
                        return Container();
                      }
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
