import 'dart:io';
import 'package:project/database/hive_helper.dart';
import 'package:project/database/hive_model.dart';
import 'package:project/interaction/user_input.dart';

var book = Book(
  name: returnBookName(),
  author: returnAuthorName(),
  printDate: returnPrintDate(),
);

Future<void> home() async {
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
        await getAllBook();
        break;

      case "2":
        break;

      case "3":
        await getAllBook();
        break;

      case "e":
      case "E":
        exit(0);

      default:
        print("Error occured. Input is out of the range.");
    }
  }
}
