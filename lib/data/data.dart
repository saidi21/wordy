import 'package:shared_preferences/shared_preferences.dart';
import 'package:wordy/models/trie.dart';

class Data {
  SharedPreferences? preferences;
  String? dailyWord;
  DateTime? time;
  List<String>? attempts = [];
  Trie dailyTrie = Trie();
  Trie englishTrie = Trie();

  //Singleton
  static final Data _instance = Data._internal();

  factory Data() => _instance;
  Data._internal();
}
