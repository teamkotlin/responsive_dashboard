import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';
import 'file_info_card.dart';

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRation;

  const FileInfoCardGridView(
      {Key? key, this.crossAxisCount = 4, this.childAspectRation = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRation),
        itemBuilder: (context, index) =>
            FileInfoCard(info: demoMyFiles[index]));
  }
}
