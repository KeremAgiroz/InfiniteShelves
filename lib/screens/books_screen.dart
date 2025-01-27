import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';

import '../widgets/bottom_menu.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["surface"],
      body: Center(
        child: Text("Kitaplar ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
