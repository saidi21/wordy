import 'package:flutter/material.dart';
import 'package:wordy/config/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _Button(
          color: AppColors.correct,
          text: 'Daily',
          onTap: () {},
        ),
        _Button(
          text: 'Chain',
          color: AppColors.purple,
          onTap: () {},
        ),
        _Button(
          color: AppColors.background,
          text: 'How To Play?',
          onTap: () {},
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const _Button({
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: AppColors.text,
                  width: 2,
                ),
              ),
              backgroundColor: color,
              elevation: 10),
          onPressed: onTap,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          )),
    );
  }
}
