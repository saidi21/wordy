import 'package:flutter/material.dart';
import 'package:wordy/config/constants.dart';

class Credit extends StatelessWidget {
  const Credit({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.credit,
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
