// uygulamada sayfaları ve navigasyon işlemlerini buraya.
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/authors_screen.dart';
import 'package:flutter_app/screens/books_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/search_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/books',
      builder: (context, state) => const BooksScreen(),
    ),
    GoRoute(
      path: '/authors',
      builder: (context, state) => const AuthorsScreen(),
    ),
  ],
);
