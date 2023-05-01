import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 0,
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sections: pieChartSections)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "29.0",
                style: Theme.of(context).textTheme.headline5,
              ),
              const Text(" of 128 GB data")
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSections = [
  PieChartSectionData(
      color: primaryColor, value: 28, showTitle: false, radius: 25),
  PieChartSectionData(
      color: Color(0xff26e5ff), value: 24, showTitle: false, radius: 23),
  PieChartSectionData(
      color: Color(0xffffcf26), value: 20, showTitle: false, radius: 20),
  PieChartSectionData(
      color: Color(0xffee2727), value: 18, showTitle: false, radius: 12),
  PieChartSectionData(
      color: primaryColor.withOpacity(0.1),
      value: 10,
      showTitle: false,
      radius: 18),
];
