import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/core/themes.dart';

import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("profil ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
