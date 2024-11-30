import 'package:wordy/models/letter.dart';

class Word {
  final List<Letter> letters;

  Word({required this.letters});

  void addLetter(String letter) {
    var index = letters.indexWhere((item) => item.val.isEmpty);
    if (index != -1) {
      letters[index] = Letter(val: letter);
    }
  }

  void removerLetter() {
    var index = letters.lastIndexWhere((item) => item.val.isNotEmpty);
    if (index != -1) {
      letters[index] = Letter.empty();
    }
  }
}
