import 'package:flutter/material.dart';
import 'package:wordy/config/constants.dart';

class WTitle extends StatelessWidget {
  const WTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        5,
        (index) => _TitleTile(
          letter: AppStrings.title[index],
        ),
      ),
    );
  }
}

class _TitleTile extends StatelessWidget {
  const _TitleTile({required this.letter});

  final String letter;

  Color _getColor() {
    if (letter == AppStrings.title[0]) {
      return AppColors.correct;
    } else if (letter == AppStrings.title[1]) {
      return AppColors.purple;
    } else if (letter == AppStrings.title[4]) {
      return AppColors.inWord;
    } else {
      return AppColors.wrong;
    }
  }

  double _getHeight() {
    if (letter == AppStrings.title[0]) {
      return 180;
    } else if (letter == AppStrings.title[1]) {
      return 150;
    } else if (letter == AppStrings.title[2]) {
      return 210;
    } else if (letter == AppStrings.title[3]) {
      return 170;
    } else if (letter == AppStrings.title[4]) {
      return 180;
    } else {
      return 100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.13,
      height: _getHeight(),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: _getColor(),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          letter,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
