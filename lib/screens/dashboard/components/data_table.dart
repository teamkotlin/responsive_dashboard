import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataTables extends StatelessWidget {
  const DataTables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                horizontalMargin: 0.0,
                columnSpacing: defaultPadding,
                columns: const [
                  DataColumn(label: Text("File Name")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Size")),
                ],
                rows: List.generate(demoRecentFiles.length,
                    (index) => recentFileDataRow(demoRecentFiles[index]))),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile recentFile) => DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(recentFile.icon!),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text("${recentFile.title}"),
          ),
        ],
      )),
      DataCell(Text("${recentFile.date}")),
      DataCell(Text("${recentFile.size}")),
    ]);
