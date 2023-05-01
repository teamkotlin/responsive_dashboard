import 'package:admin_dashboard/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        StorageInfoCard(
          title: "Documents and Files",
          svg: "assets/icons/Documents.svg",
          amountOfFiles: "1.3 GB",
          numOfFiles: 1320,
        ),
        StorageInfoCard(
          title: "Media Files",
          svg: "assets/icons/media.svg",
          amountOfFiles: "3.2 GB",
          numOfFiles: 2810,
        ),
        StorageInfoCard(
          title: "Other Files",
          svg: "assets/icons/folder.svg",
          amountOfFiles: "2.1 GB",
          numOfFiles: 1070,
        ),
        StorageInfoCard(
          title: "Unknown",
          svg: "assets/icons/unknown.svg",
          amountOfFiles: "0.2 GB",
          numOfFiles: 120,
        ),
      ],
    );
  }
}
