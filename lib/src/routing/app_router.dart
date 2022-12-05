import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:irobot/src/feature/home/presentation/home_screen.dart';
import 'package:irobot/src/feature/identification/presentation/identification_screen.dart';
import 'package:irobot/src/feature/regulate/presentation/regulate_screen.dart';
import 'package:irobot/src/feature/selection/presentation/finger_screem/finger_screen.dart';
import 'package:irobot/src/feature/selection/presentation/selection_screen/selection_screen.dart';
import 'package:irobot/src/feature/understand/presentation/understand_screen.dart';
import 'package:irobot/src/routing/not_found_screen.dart';

enum AppRoute {
  home,
  identification,
  selection,
  fingerprint,
  understand,
  regulate,
  language,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'identification',
            name: AppRoute.identification.name,
            builder: (context, state) => const IdentificationScreen(),
          ),
          GoRoute(
            path: 'selection',
            name: AppRoute.selection.name,
            builder: (context, state) => const SelectionScreen(),
            routes: [
              GoRoute(
                path: 'fingerprint',
                name: AppRoute.fingerprint.name,
                builder: (context, state) => const FingerScreen(),
              ),
            ],
          ),
          GoRoute(
            path: 'understand',
            name: AppRoute.understand.name,
            builder: (context, state) => const UnderstandScreen(),
          ),
          GoRoute(
            path: 'regulate',
            name: AppRoute.regulate.name,
            builder: (context, state) => const RegulateScreen(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
