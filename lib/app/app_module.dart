import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_webapp_example/app/modules/dashboard/dashboard_page.dart';
import 'package:modular_webapp_example/app/modules/home/home_page.dart';
import 'package:modular_webapp_example/app/modules/profile/profile_page.dart';
import 'package:modular_webapp_example/app/modules/settings/settings_page.dart';
import 'package:modular_webapp_example/app/shared/app_routes.dart';

class AppModule extends Module {
  @override
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(AppRoutes.home, child: (context) => const HomePage(), children: [
      ChildRoute(
        AppRoutes.profilePage,
        child: (_) => const ProfilePage(color: Colors.red, title: 'Profile'),
      ),
      ChildRoute(AppRoutes.dashboardPage, child: (_) => const DashboardPage()),
      ChildRoute(AppRoutes.settingsPage, child: (_) => const SettingsPage()),
    ]);
    // r.child(
    //   AppRoutes.profilePage,
    //   child: (_) => ProfilePage(username: r.args.data),
    // );
  }
}
