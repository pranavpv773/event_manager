// ignore_for_file: depend_on_referenced_packages

import 'package:calender_events/app/modules/splash/splash_landing.dart';
import 'package:calender_events/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Events',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (context, child) {
        var size = context.mediaQuery.size;
        var systemTextScale = context.mediaQuery.textScaleFactor;
        var textScaleFactor = 1.0;
        if (size.width < 320) {
          textScaleFactor = 0.9;
        } else if (size.width > 440) {
          textScaleFactor = 1.0;
        } else {
          textScaleFactor = 1.0;
        }
        return MediaQuery(
          data: context.mediaQuery
              .copyWith(textScaleFactor: textScaleFactor * systemTextScale),
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: const SplashScreen(),
    );
  }
}
