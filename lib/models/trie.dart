import 'dart:math';

import 'trie_node.dart';

class Trie {
  TrieNode root = TrieNode();
  void insert(String word) {
    TrieNode currentNode = root;
    for (var i = 0; i < word.length; i++) {
      if (currentNode.children.containsKey(word[i]) == false) {
        currentNode.children.addAll({word[i]: TrieNode()});
      }
      currentNode = currentNode.children[word[i]]!;
    }
    currentNode.isTerminal = true;
  }

  bool search(String word) {
    TrieNode currentNode = root;
    for (var i = 0; i < word.length; i++) {
      if (currentNode.children.containsKey(word[i]) == false) {
        return false;
      }
      currentNode = currentNode.children[word[i]]!;
    }
    return currentNode.isTerminal;
  }

  String randomWord() {
    var currentNode = root;
    var word = '';
    int keyId;
    for (var i = 0; i < 5; i++) {
      keyId = Random().nextInt(currentNode.children.length);
      word += currentNode.children.keys.elementAt(keyId);
      currentNode = currentNode.children.values.elementAt(keyId);
    }
    return word;
  }
}