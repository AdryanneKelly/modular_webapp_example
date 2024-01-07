import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_webapp_example/app/shared/app_routes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings',
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () {
              Modular.to.navigate(AppRoutes.profilePage);
            },
            icon: const Icon(
              Icons.close,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Settings',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
