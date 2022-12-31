import 'package:flutter/material.dart';

import '../../helpers/redirect_helpers.dart';
import '../../services/authorization/login_service.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/banner.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('compartir'),
            onTap: () => {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => {
              if (LoginServices.getLogout()) {Redirect.to(context, "/Login")}
            },
          ),
        ],
      ),
    );
  }
}
