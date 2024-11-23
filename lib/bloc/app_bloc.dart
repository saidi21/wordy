import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordy/config/constants.dart';
import 'package:wordy/data/data.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final _data = Data();
  void onLoad(AppEvent event, Emitter<AppState> emit) {
    emit(AppLoading());
    final midnight = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
    try {
      _data.time =
          DateTime.parse(_data.preferences!.getString(AppKeys.timeKey)!);
      if (midnight.isAfter(_data.time!)) {
        add(UpdateApp());
      } else {
        _data.dailyWord = _data.preferences!.getString(AppKeys.wordKey);
        _data.attempts = _data.preferences!.getStringList(AppKeys.attemptsKey);
        emit(AppSuccess());
      }
    } catch (_) {
      add(UpdateApp());
    }
  }

  void onUpdate(AppEvent event, Emitter<AppState> emit) async {
    final midnight = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
    var dailyFile = await rootBundle.loadString(AppKeys.dailyFileKey);
    for (var word in dailyFile.split('\n')) {
      _data.dailyTrie.insert(word);
    }
    try {
      _data.preferences!
          .setString(AppKeys.wordKey, _data.dailyTrie.randomWord());
      _data.preferences!.setString(AppKeys.timeKey, midnight.toIso8601String());
      _data.preferences!.setStringList(AppKeys.attemptsKey, []);
      add(LoadApp());
    } catch (_) {
      emit(AppFail());
    }
  }

  AppBloc() : super(AppInitial()) {
    on<LoadApp>(onLoad);
    on<UpdateApp>(onUpdate);
  }
}
