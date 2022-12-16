import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
         const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pets),
            title: const Text('Dogs'),
            onTap: () {
            }
          ),
          ListTile(
            leading: const Icon(Icons.pets),
            title: const Text('Cats'),
            onTap: () {

            }
          ),
          ListTile(
            leading: const Icon(Icons.design_services),
            title: const Text('Our Services'),
            onTap: () {
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_auto),
            title: const Text('Brands'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://estaticos-cdn.prensaiberica.es/clip/05d20bb5-f64d-4cbe-a607-149bed3d7f7f_16-9-aspect-ratio_default_0.jpg'),
              fit: BoxFit.cover)
      ),
      child: Container(),);
  }
}