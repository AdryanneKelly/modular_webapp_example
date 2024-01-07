import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_webapp_example/app/shared/app_routes.dart';

class ProfilePage extends StatelessWidget {
  final String title;
  final Color color;
  const ProfilePage({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile',
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () => Modular.to.navigate(AppRoutes.settingsPage),
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
