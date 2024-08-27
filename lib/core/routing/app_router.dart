import 'package:flutter/material.dart';
import 'package:prayer_times/core/routing/routes.dart';
import 'package:prayer_times/features/home/presentation/pages/home_page.dart';
import 'package:prayer_times/features/onboarding/presentation/pages/onboarding_page.dart';

class AppRouter{

  Route generatRoute(RouteSettings settings){

    switch(settings.name){
      case Routes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No Route Found For ${settings.name}'),),
        ));
    }
  }
}