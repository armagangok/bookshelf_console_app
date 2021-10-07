import 'dart:io';
import 'package:project/database/hive_helper.dart';
import 'package:project/database/hive_model.dart';
import 'package:project/interaction/user_input.dart';
import 'package:project/tools/clear_terminal.dart';

var book = Book(
  name: returnBookName(),
  author: returnAuthorName(),
  printDate: returnPrintDate(),
);

Future<void> home() async {
  clear();
  String choose;
  while (true) {
    print("""
  [E/e] Exit.
  [0] Add book.
  [1] Delete book.
  [2] Search for.
  [3] Look up.
  """);
    choose = stdin.readLineSync()!;

    switch (choose) {
      case "0":
        addBook(book);
        break;

      case "1":
        clear();
        int index = await getAllBook();
        int indexInput = returnDeletingInput(index);
        deleteBook(indexInput);
        clear();
        await getAllBook();
        break;

      case "2":
        break;

      case "3":
        clear();
        await getAllBook();
        break;

      case "e":
      case "E":
        clear();
        exit(0);

      default:
        clear();
        print("Error occured. Input is out of the range.");
    }
  }
}
