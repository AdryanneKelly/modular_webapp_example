import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_webapp_example/app/shared/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final leading = SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: NavigationListener(builder: (context, child) {
        return Expanded(
          child: Column(
            children: [
              ListTile(
                title: const Text('Home page'),
                onTap: () => Modular.to.navigate(AppRoutes.dashboardPage),
                selected: Modular.to.path.endsWith(AppRoutes.dashboardPage),
              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () => Modular.to.navigate(AppRoutes.profilePage),
                selected: Modular.to.path.endsWith(AppRoutes.profilePage),
              ),
            ],
          ),
        );
      }),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Modular Webapp Example',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        children: [
          Expanded(flex: 1, child: leading),
          Container(width: 2, color: Colors.black45),
          const Expanded(flex: 4, child: RouterOutlet()),
        ],
      ),
    );
  }
}
