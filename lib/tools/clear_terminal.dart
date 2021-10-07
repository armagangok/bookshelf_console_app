import 'dart:io';

void clear() {
  print(Process.runSync("clear", [], runInShell: true).stdout);
}
