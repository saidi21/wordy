enum LetterStatus {
  initial,
  correct,
  wrong,
  inWord,
}

class Letter {
  final String val;
  final LetterStatus status = LetterStatus.initial;

  factory Letter.empty() => Letter(val: '');

  Letter({required this.val});
}
