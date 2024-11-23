part of 'app_bloc.dart';

sealed class AppEvent {}

final class LoadApp extends AppEvent {}

final class UpdateApp extends AppEvent {}
