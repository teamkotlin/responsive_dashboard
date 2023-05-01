import 'package:flutter/material.dart';

import '../../../constants.dart';
class MyFiles extends StatelessWidget {
  const MyFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
            style: TextButton.styleFrom(
                padding:const  EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding / 2)),
            onPressed: () {},
            icon:const Icon(Icons.add),
            label:const Text('Add New'))
      ],
    );
  }
}
