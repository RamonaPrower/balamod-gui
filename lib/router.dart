import 'package:balamod_app/pages/balatro.dart';
import 'package:balamod_app/pages/home.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/balatro',
      builder: (context, state) {
        final path = state.uri.queryParameters['path']!;
        final version = state.uri.queryParameters['version']!;
        final balamodVersion = state.uri.queryParameters['balamodVersion'] ?? '';
        return BalatroPage(
          path: path,
          version: version,
          balamodVersion: balamodVersion,
        );
      },
    ),
  ],
);
