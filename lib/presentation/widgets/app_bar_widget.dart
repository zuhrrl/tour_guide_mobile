import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            key: const Key('burger_menu'),
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const Text(
            key: Key('home_title'),
            'Home',
          ),
          IconButton(
            key: const Key('notification_menu'),
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        70,
      );
}
