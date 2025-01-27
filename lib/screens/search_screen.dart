import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("AraMA Ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
