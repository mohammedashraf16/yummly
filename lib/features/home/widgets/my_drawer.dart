import 'package:flutter/material.dart';
import 'package:yumly/features/auth/service/auth_service.dart';
import 'package:yumly/features/home/widgets/my_drawer_tile.dart';
import 'package:yumly/features/settings/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
void logOut()async{
  final authService = AuthService();
  return authService.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          Spacer(),
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout_rounded,
            onTap: () {
              logOut();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
