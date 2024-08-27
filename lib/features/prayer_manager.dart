import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prayer_times/core/routing/app_router.dart';
import 'package:prayer_times/core/routing/routes.dart';
import 'package:prayer_times/core/theming/colors_manager.dart';

class PrayerManager extends StatelessWidget {
  final AppRouter appRouter;
  const PrayerManager({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Prayer Times",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBrown,
          scaffoldBackgroundColor: ColorsManager.splashBackgroundColor,
        ),
        initialRoute:Routes.onBoardingPage,
        onGenerateRoute: appRouter.generatRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
