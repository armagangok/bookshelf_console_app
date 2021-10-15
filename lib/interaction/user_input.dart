import 'dart:io';


InterHelp  helper = InterHelp();
class InterHelp {
    static final InterHelp _singleton = InterHelp._internal();
  String content = "String";

  factory InterHelp() {
    return _singleton;
  }

  InterHelp._internal();
  String returnBookName() {
  print("Please enter book name: ");
  String bookName = stdin.readLineSync()!;
  return bookName;
}

String returnAuthorName() {
  print("Plese enter author name: ");
  String authorName = stdin.readLineSync()!;
  return authorName;
}

int returnPrintDate() {
  print("Please enter print date: ");
  int printDate = int.parse(stdin.readLineSync()!);
  return printDate;
}

int returnDeletingInput(index) {
  print("Please input the index to delete at: ");
  int indexInput = int.parse(stdin.readLineSync()!);

  if (indexInput <= index && indexInput >= 0) {
    return indexInput;
  } else {
    returnDeletingInput(index);
  }
  return 0;
}


}
