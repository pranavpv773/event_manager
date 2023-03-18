import 'package:calender_events/app/modules/add_event/add_event.dart';
import 'package:calender_events/app/modules/splash/splash_landing.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    final url = settings.name;

    switch (url) {
      case "/":
        return pagetransition(settings, const SplashScreen());
      case AppRoutes.splash:
        return pagetransition(settings, const SplashScreen());
      case AppRoutes.addEvent:
        return pagetransition(settings, const AddEventWidget());
    }
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(child: Error()),
            ));
  }

  static PageTransition<dynamic> pagetransition(
      RouteSettings settings, Widget widget) {
    return PageTransition(
      child: widget,
      type: PageTransitionType.fade,
      settings: settings,
      duration: const Duration(milliseconds: 1),
      reverseDuration: const Duration(milliseconds: 1),
    );
  }

  static PageTransition<dynamic> pagetransitionLeft(
      RouteSettings settings, Widget widget) {
    return PageTransition(
      child: widget,
      type: PageTransitionType.rightToLeft,
      settings: settings,
      duration: const Duration(milliseconds: 100),
      reverseDuration: const Duration(milliseconds: 100),
    );
  }
}

class Error extends StatelessWidget {
  const Error({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Oops');
  }
}
