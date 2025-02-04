import 'package:go_router/go_router.dart';
import 'package:rounds/main.dart';

import '../pages/login.page.dart';
import '../pages/home.page.dart';

final GoRouter router = GoRouter(initialLocation: "/landing",routes: [
  GoRoute(
    path: "/landing",
    builder: (context, state) => const LandingScreen(),
  ),
  GoRoute(
    path: "/login",
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(path: "/home", builder: (context, state) => const HomeScreen())
]);
