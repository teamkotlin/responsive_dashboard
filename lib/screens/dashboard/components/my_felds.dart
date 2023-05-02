import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/responsive.dart';
import 'package:admin_dashboard/screens/dashboard/components/data_table.dart';
import 'package:admin_dashboard/screens/dashboard/components/file_infor_card_grid_view.dart';
import 'package:admin_dashboard/screens/dashboard/components/my_fiels.dart';
import 'package:admin_dashboard/screens/dashboard/components/storage_section.dart';
import 'package:flutter/material.dart';

class MyFields extends StatelessWidget {
  const MyFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Column(
      children: [
        const MyFiles(),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: FileInfoCardGridView(
              crossAxisCount: _size.width < 650 ?2:4,
              childAspectRation: _size.width < 650 ? 1.3:1,
            ),
            tablet: FileInfoCardGridView(),
            desktop: FileInfoCardGridView(
              childAspectRation: _size.width < 1400 ? 1.1 : 1.4,
            )),
        const SizedBox(
          height: defaultPadding,
        ),
        const DataTables(),
        const SizedBox(
          height: defaultPadding,
        ),
        if (Responsive.isMobile(context)) StorageSection()
      ],
    );
  }
}
