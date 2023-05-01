import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/models/MyFiles.dart';
import 'package:admin_dashboard/screens/dashboard/components/data_table.dart';
import 'package:admin_dashboard/screens/dashboard/components/file_info_card.dart';
import 'package:admin_dashboard/screens/dashboard/components/my_fiels.dart';
import 'package:flutter/material.dart';

class MyFields extends StatelessWidget {
  const MyFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyFiles(),
        const SizedBox(height: defaultPadding,),
        GridView.builder(
            shrinkWrap: true,
            itemCount: demoMyFiles.length,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 1.4),
            itemBuilder: (context, index) =>
                FileInfoCard(info: demoMyFiles[index])),
        const SizedBox(height: defaultPadding,),
        const DataTables(),
      ],
    );
  }
}
