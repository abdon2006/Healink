import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.initial,
    routes: [
      GoRoute(
        path: AppRoutes.initial,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Splash Screen'))),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Login Screen'))),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Home Screen'))),
      ),
    ],
  );
}
