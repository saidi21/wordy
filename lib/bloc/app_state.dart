part of 'app_bloc.dart';

sealed class AppState {}

final class AppInitial extends AppState {}

final class AppLoading extends AppState {}

final class AppSuccess extends AppState {}

final class AppFail extends AppState {}
