import 'dart:io';


String returnBookName() {
  print("Please enter book name: ");
  String bookName = stdin.readLineSync()!;
  return bookName;
}

String returnAuthorName() {
  print("Plese enter author name ");
  String authorName = stdin.readLineSync()!;
  return authorName;
}

int returnPrintDate() {
  print("Please enter print date: ");
  int printDate = int.parse(stdin.readLineSync()!);
  return printDate;
}


