import 'package:flutter/material.dart';

abstract final class AppStrings {
  static const String title = 'WORDY';
  static const String credit = 'BITONOMOUS';
}

abstract final class AppKeys {
  static const String wordKey = 'wordKey';
  static const String timeKey = 'timeKey';
  static const String attemptsKey = 'attemptsKey';
  static const String dailyFileKey = 'assets/daily_words.txt';
  static const String englishFileKey = 'assets/english_words.txt';
}

abstract final class AppColors {
  static const Color background = Color(0xFF1E1E1E);
  static const Color text = Color(0xFFFFFFFF);
  static const Color initial = Color(0xFF9E9E9E);
  static const Color correct = Color(0xFF379777);
  static const Color inWord = Color(0xFFF4CE14);
  static const Color wrong = Color(0xFF45474B);
  static const Color purple = Color(0xFF8247A9);
  static const Color shadow = Color(0xFF0C0C0C);
}

abstract final class AppStyles {
  static const TextStyle titleLarge = TextStyle(
    color: AppColors.text,
    fontFamily: 'Istok',
    fontSize: 36,
  );
  static const TextStyle bodyMedium = TextStyle(
    color: AppColors.text,
    fontFamily: 'Istok',
    fontSize: 32,
  );
  static const TextStyle bodySmall = TextStyle(
    color: AppColors.text,
    fontFamily: 'Istok',
    fontSize: 24,
  );
  static const TextStyle labelSmall = TextStyle(
    color: AppColors.text,
    fontFamily: 'Istok',
    fontSize: 12,
  );
}
