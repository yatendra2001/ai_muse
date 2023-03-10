import 'package:ai_muse/features/authentication/screens/link_wallet_screen.dart';
import 'package:ai_muse/features/create%20nft/screens/create_nft_screen.dart';
import 'package:ai_muse/features/create%20nft/screens/generate_nft_screen.dart';
import 'package:ai_muse/features/dashboard/screens/bottom_nav_screen.dart';
import 'package:ai_muse/features/dashboard/screens/dashobard_screen.dart';
import 'package:ai_muse/features/onboarding/screens/pageview.dart';
import 'package:ai_muse/features/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/'),
          builder: (_) => SplashScreen(),
        );
      case CreateNFTScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CreateNFTScreen.routeName),
          type: PageTransitionType.rightToLeft,
          child: const CreateNFTScreen(),
        );
      case GenerateNFTScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: GenerateNFTScreen.routeName),
          type: PageTransitionType.rightToLeft,
          child: const GenerateNFTScreen(),
        );
      case LinkWalletScreen.routename:
        return PageTransition(
          settings: const RouteSettings(name: LinkWalletScreen.routename),
          type: PageTransitionType.bottomToTop,
          child: const LinkWalletScreen(),
        );
      case BottomNavBarScreen.routename:
        return MaterialPageRoute(
          settings: const RouteSettings(name: BottomNavBarScreen.routename),
          builder: (_) => const BottomNavBarScreen(),
        );
      case DashBoardScreen.routename:
        return MaterialPageRoute(
          settings: const RouteSettings(name: DashBoardScreen.routename),
          builder: (_) => const DashBoardScreen(),
        );
      case OnboardingPageview.routeName:
        return MaterialPageRoute(
          settings: const RouteSettings(name: OnboardingPageview.routeName),
          builder: (_) => OnboardingPageview(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
