import 'dart:io';
import 'package:project/database/hive_helper.dart';
import 'package:project/database/hive_model.dart';
import 'package:project/interaction/user_input.dart';
import 'package:project/tools/clear_terminal.dart';

Future<void> home() async {
  Book book = Book(
    name: helper.returnBookName(),
    author: helper.returnAuthorName(),
    printDate: helper.returnPrintDate(),
  );

  clearTerminal();

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
        clearTerminal();
        int index = await getAllBook();
        int indexInput = helper.returnDeletingInput(index);
        deleteBook(indexInput);
        clearTerminal();
        await getAllBook();
        break;

      case "2":
        break;

      case "3":
        clearTerminal();
        await getAllBook();
        break;

      case "e":
      case "E":
        clearTerminal();
        exit(0);

      default:
        clearTerminal();
        print("Error occured. Input is out of the range.");
    }
  }
}
