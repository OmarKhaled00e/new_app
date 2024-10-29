import 'package:flutter/material.dart';
import 'package:new_app/views/Logout_page.dart';
import 'package:new_app/views/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          ListTile(
            leading: const Icon(
              Icons.login,
              size: 32,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              size: 32,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LogoutPage();
                }));
              },
              child: const Text(
                'Logout',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
