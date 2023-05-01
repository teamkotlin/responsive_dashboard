import 'package:admin_dashboard/constants.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/my_felds.dart';
import 'components/storage_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: const [
              Expanded(flex: 5, child: MyFields()),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(flex: 2, child: StorageSection()),
            ],
          )
        ],
      ),
    );
  }
}
