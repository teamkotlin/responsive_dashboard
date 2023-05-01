import 'package:admin_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StorageInfoCard extends StatelessWidget {
  final String svg, amountOfFiles, title;
  final int numOfFiles;

  const StorageInfoCard(
      {Key? key,
      required this.svg,
      required this.amountOfFiles,
      required this.title,
      required this.numOfFiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultPadding),
          border: Border.all(color: primaryColor.withOpacity(0.15), width: 2)),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svg),
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                Text(
                  "$numOfFiles Files",
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
          Text(amountOfFiles),
        ],
      ),
    );
  }
}
