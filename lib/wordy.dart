import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordy/bloc/app_bloc.dart';
import 'package:wordy/config/theme.dart';

import 'presentation/export_pages.dart';

class Wordy extends StatelessWidget {
  const Wordy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (context) => AppBloc(),
      child: MaterialApp(
        theme: theme(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
          '/play': (context) => const PlayPage(),
        },
      ),
    );
  }
}
