// ignore_for_file: implicit_call_tearoffs

import 'package:go_router/go_router.dart';
import 'package:go_transitions/go_transitions.dart';
import 'package:theme_app/core/routing/app_routes.dart';
import 'package:theme_app/features/home/views/favorite_view.dart';
import 'package:theme_app/features/home/views/home_view.dart';
import 'package:theme_app/features/home/views/main_view.dart';
import 'package:theme_app/features/home/views/search_view.dart';
import 'package:theme_app/features/onboarding/views/onboarding_view.dart';
import 'package:theme_app/features/splash/views/splash_view.dart';

class GeneratedRoutesConfig {
  static GoRouter router() {
    return GoRouter(
      initialLocation: AppRoutes.mainscreen,
      routes: [
        GoRoute(
          path: AppRoutes.mainscreen,
          name: AppRoutes.mainscreen,
          builder: (context, state) => const MainView(),
          pageBuilder: GoTransitions.fadeUpwards,
        ),
        GoRoute(
          path: AppRoutes.splash,
          name: AppRoutes.splash,
          builder: (context, state) => const SplashView(),
          pageBuilder: GoTransitions.fadeUpwards,
        ),
        GoRoute(
          path: AppRoutes.onboarding,
          name: AppRoutes.onboarding,
          builder: (context, state) => const OnboardingView(),
          pageBuilder: GoTransitions.fadeUpwards,
        ),

        GoRoute(
          path: AppRoutes.home,
          name: AppRoutes.home,
          builder: (context, state) => HomeScreen(),
          pageBuilder: GoTransitions.fadeUpwards,
        ),
        GoRoute(
          path: AppRoutes.search,
          name: AppRoutes.search,
          builder: (context, state) => const SearchView(),
        ),

        GoRoute(
          path: AppRoutes.favorite,
          name: AppRoutes.favorite,
          builder: (context, state) => const FavoriteView(),
        ),
        // Add more routes
      ],
    );
  }
}
