import 'package:flutter/material.dart';
import 'package:wordy/config/constants.dart';

ThemeData theme() => ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.background,
  textTheme: const TextTheme(
    titleLarge: AppStyles.titleLarge,
    bodyMedium: AppStyles.bodyMedium,
    bodySmall: AppStyles.bodySmall,
    labelSmall: AppStyles.labelSmall,
  ),
);
