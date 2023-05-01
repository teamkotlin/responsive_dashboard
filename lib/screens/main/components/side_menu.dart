import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideManu extends StatelessWidget {
  const SideManu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              title: "Dashboard",
              svg: "assets/icons/menu_dashbord.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              svg: "assets/icons/menu_tran.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Tasks",
              svg: "assets/icons/menu_task.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Documents",
              svg: "assets/icons/menu_doc.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Store",
              svg: "assets/icons/menu_store.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Notifications",
              svg: "assets/icons/menu_notification.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svg: "assets/icons/menu_profile.svg",
              onPress: () {},
            ),
            DrawerListTile(
              title: "Settings",
              svg: "assets/icons/menu_setting.svg",
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String svg;
  final String title;
  final VoidCallback onPress;

  const DrawerListTile(
      {Key? key, required this.title, required this.svg, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svg,
        color: Colors.white,
        height: 17,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: onPress,
      horizontalTitleGap: 0.0,
    );
  }
}
