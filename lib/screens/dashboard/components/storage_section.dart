import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

import 'chart.dart';

class StorageSection extends StatelessWidget {
  const StorageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: Theme.of(context).textTheme.headline3?.copyWith(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          const SizedBox(height: defaultPadding),
          const Chart(),
          const StorageDetails(),
        ],
      ),
    );
  }
}
