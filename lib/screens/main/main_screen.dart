import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/controllers/MenuAppController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../responsive.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer:const SideManu(),
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context)) const Expanded(child: SideManu()),
            const SizedBox(
              width: defaultPadding,
            ),
            Expanded(flex: 5, child: DashboardScreen()),
          ],
        ),
      ),
    );
  }
}
