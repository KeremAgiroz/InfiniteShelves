// uygulamada sayfaları ve navigasyon işlemlerini buraya.
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/authors_screen.dart';
import 'package:flutter_app/screens/books_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/search_screen.dart';
import 'package:flutter_app/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoadingScreen(),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const ProfileScreen(),
      ),
    ),
    GoRoute(
      path: '/search',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SearchScreen(),
      ),
    ),
    GoRoute(
      path: '/books',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const BooksScreen(),
      ),
    ),
    GoRoute(
      path: '/authors',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const AuthorsScreen(),
      ),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsScreen(),
      ),
    ),
  ],
);
