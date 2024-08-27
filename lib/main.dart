import 'package:flutter/material.dart';
import 'package:prayer_times/core/routing/app_router.dart';
import 'package:prayer_times/features/prayer_manager.dart';

void main() {
  runApp(PrayerManager(
    appRouter: AppRouter(),
  ));
}
