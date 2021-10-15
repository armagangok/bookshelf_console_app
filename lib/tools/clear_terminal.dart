import 'dart:io';

void clearTerminal() {
  print(Process.runSync("clear", [], runInShell: true).stdout);
}
