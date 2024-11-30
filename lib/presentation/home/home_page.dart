import 'package:flutter/material.dart';
import 'package:wordy/presentation/home/widgets/export_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          WTitle(),
          Expanded(flex: 2, child: Body()),
          Expanded(child: Credit()),
        ],
      ),
    );
  }
}
